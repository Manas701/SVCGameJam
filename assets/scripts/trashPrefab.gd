extends Node

@onready var anim = $AnimationPlayer
var trash_type: Node
var chosenTrash: CharacterBody3D
var wasBatted = false

@export var hittable: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	
	anim.connect("animation_finished", on_trash_landed)
	#randomize()
	var trashOptions = get_tree().get_nodes_in_group("trashObjects")
	chosenTrash = trashOptions[randi() % trashOptions.size()]
	print("before set visible: " + str(chosenTrash.is_visible_in_tree()) + str(chosenTrash))
	chosenTrash.visible = true
	print("after set visible: " + str(chosenTrash.is_visible_in_tree()))

func _input(event):
	if event.is_action_pressed("swing") && (anim.get_current_animation()=="throw_trash") && hittable:
		hit()

func hit():
	wasBatted = true
	anim.play(get_parent().get_parent().get_node("PlayerInput").whichAnim)

func on_trash_landed(_event):
	if (wasBatted):
		if (chosenTrash.trash_type == get_parent().get_parent().get_node(get_parent().get_parent().get_node("PlayerInput").whichBin).trash_type):
			print("Right Bin! :)")
			Scorer.score += 1
		else:
			print("Wrong Bin! :(")
			#Scorer.score -= 1
		# Audio stuff - Kai
		chosenTrash.audio.play(0.0)
		#print(chosenTrash.audio.stream)
	queue_free()
