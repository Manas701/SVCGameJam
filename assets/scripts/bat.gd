extends CharacterBody3D

var swingTime = 0.2
var returnTime = 0.3
var waitTime = 0.15

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
	tween.tween_property(self, "rotation_degrees", ogRotation, returnTime).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)

func _on_body_entered(body):
	if body.is_in_group("trashObjects"):
		body.get_parent().hittable = true

func _on_body_exited(body):
	if body.is_in_group("trashObjects"):
		body.get_parent().hittable = false
