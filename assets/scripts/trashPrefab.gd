extends Node

@onready var anim = $AnimationPlayer
var trash_type: Node

# Called when the node enters the scene tree for the first time.
func _ready():
	anim.connect("animation_finished", destroy_trash)
	
	randomize()
	var trashOptions = get_tree().get_nodes_in_group("trashObjects")
	var trash = trashOptions[randi() % trashOptions.size()]
	trash.set_visible(true)

func _input(event):
	if event.is_action_pressed("swing"):
		hit()

func hit():
#	anim.play("hit_center")
	anim.play(get_parent().get_node("PlayerInput").whichBin)

func destroy_trash(_event):
	queue_free()
