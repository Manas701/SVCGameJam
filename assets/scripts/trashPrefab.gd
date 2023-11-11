extends Node

@onready var anim = $AnimationPlayer
var trash_type: Node

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	var children = get_children()
	var trash = children[randi() % children.size()]
	trash.set_visible(true)

func _input(event):
	if event.is_action_pressed("swing"):
		hit()

func hit():
	anim.play("hit_center")
