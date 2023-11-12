extends Node3D

@onready var car_start_position: = $CarStartPosition

@onready var cars: = $CarStartPosition/Cars

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#func _on_area_3d_area_entered(area):
#	if area.get_parent().is_in_group("car"):
#		print(area.get_parent())

func _on_animation_player_animation_finished(_anim_name):
	cars.new_car()
	$CarStartPosition/Cars/AnimationPlayer.play("car_moving")
