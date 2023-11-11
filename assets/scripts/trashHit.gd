extends Node


## Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

@onready var anim = $AnimationPlayer

func _input(event):
	if event.is_action_pressed("swing"):
		hit()

func hit():
	anim.play("hit_center")
