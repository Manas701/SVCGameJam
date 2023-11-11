extends CharacterBody3D

var angular_speed = PI

func _init():
	print("hello")
	
#func _process(delta):
	#_input()


func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_SPACE:
			print("space")


