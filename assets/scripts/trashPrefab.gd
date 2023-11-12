extends Node

@onready var anim = $AnimationPlayer
@onready var textAnim = $MissText/AnimationPlayer
var trash_type: Node
var chosenTrash

# Called when the node enters the scene tree for the first time.
func _ready():
	anim.connect("animation_finished", on_trash_landed)
	randomize()
	var trashOptions = get_tree().get_nodes_in_group("trashObjects")
	chosenTrash = trashOptions[randi() % trashOptions.size()]
	chosenTrash.set_visible(true)

func _input(event):
	if event.is_action_pressed("swing") && !anim.is_playing():
		hit()

func hit():
	anim.play(get_parent().get_parent().get_node("PlayerInput").whichAnim)

func on_trash_landed(_event):
	if (chosenTrash.trash_type == get_parent().get_parent().get_node(get_parent().get_parent().get_node("PlayerInput").whichBin).trash_type):
		#play hit text animation player
		textAnim.play("popup")
		print("Right Bin! :)")
		Scorer.score += 1
	else:
		#play miss text animation player
		textAnim.play("popup")
		print("Wrong Bin! :(")
		Scorer.score -= 1
		
	# Audio stuff - Kai
	chosenTrash.audio.play(0.0)
	#print(chosenTrash.audio.stream)

	queue_free()
