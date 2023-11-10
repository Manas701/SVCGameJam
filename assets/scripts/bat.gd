extends CharacterBody3D

var speed = 100
var angular_speed = PI

func _move(delta):
	
	position = angular_speed * delta


