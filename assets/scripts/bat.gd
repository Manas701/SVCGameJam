extends MeshInstance3D

var swingTime = 0.2
var waitTime = 0.1

var swingDegrees = 130.0
var ogRotation = get_rotation_degrees()
var endRotation = Vector3(ogRotation.x, ogRotation.y+swingDegrees, ogRotation.z)

var tween: Tween

func _input(event):
	if (event.is_action_pressed("swing") && (get_rotation_degrees() == ogRotation)):
		swing()

func swing():
	tween = create_tween()
	tween.tween_property(self, "rotation_degrees", endRotation, swingTime).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	tween.tween_interval(waitTime)
	tween.tween_property(self, "rotation_degrees", ogRotation, swingTime).set_trans(Tween.TRANS_SINE)
	print("Bat Swung")
