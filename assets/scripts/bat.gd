extends MeshInstance3D

var swingDistance = 90
var swingTime = 1.0
var tween: Tween

func _input(event):
	if event.is_action_pressed("swing"):
		swing()

func swing():
#	tween = create_tween()
#	tween.tween_property(self, "rotation_degrees", swingDistance, swingTime)
	print("YOOOOOO")
