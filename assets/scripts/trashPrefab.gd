extends Node

@onready var anim = $AnimationPlayer
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
	anim.play(get_parent().get_node("PlayerInput").whichAnim)

func on_trash_landed(_event):
	if (chosenTrash.trash_type == get_parent().get_node(get_parent().get_node("PlayerInput").whichBin).trash_type):
		print("Right Bin! :)")
		Scorer.score += 1
		print(Scorer.score)
	else:
		print("Wrong Bin! :(")
		Scorer.score -= 1
		print(Scorer.score)
	queue_free()
