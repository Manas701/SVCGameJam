extends Node3D

@onready var car_start_position: = $CarStartPosition

@onready var cars: = $CarStartPosition/Cars


func _on_animation_player_animation_finished(_anim_name):
	cars.new_car()
	$CarStartPosition/Cars/AnimationPlayer.play("car_moving")
