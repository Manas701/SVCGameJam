extends Node3D

@onready var car_black: = $CarBlack
@onready var car_blue: = $CarBlue
@onready var car_grey: = $CarGrey
@onready var car_red: = $CarRed
@onready var car_white: = $CarWhite

@onready var car_black_coll: = $CarBlack/CarArea3D/CollisionShape3D
@onready var car_blue_coll: = $CarBlue/CarArea3D/CollisionShape3D
@onready var car_grey_coll: = $CarGrey/CarArea3D/CollisionShape3D
@onready var car_red_coll: = $CarRed/CarArea3D/CollisionShape3D
@onready var car_white_coll: = $CarWhite/CarArea3D/CollisionShape3D

var car_index: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	new_car()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func new_car():
	randomize()
	car_index = randi() % 5
	
	disable_cars()
	
	#print(car_index)
	
	if car_index == 0:
		car_black.set_visible(true)
		car_black_coll.set_deferred("enabled", true)
	elif car_index == 1:
		car_blue.set_visible(true)
		car_blue_coll.set_deferred("enabled", true)
	elif car_index == 2:
		car_grey.set_visible(true)
		car_grey_coll.set_deferred("enabled", true)
	elif car_index == 3:
		car_red.set_visible(true)
		car_red_coll.set_deferred("enabled", true)
	else:
		car_white.set_visible(true)
		car_white_coll.set_deferred("enabled", true)
	

func disable_cars():
	car_black.set_visible(false)
	car_black.set_deferred("disabled", true)
	car_black.set_deferred("disabled", true)
	car_white.set_visible(false)
	car_white_coll.set_deferred("disabled", true)
	car_grey.set_visible(false)
	car_grey_coll.set_deferred("disabled", true)
	car_red.set_visible(false)
	car_red_coll.set_deferred("disabled", true)
	car_blue.set_visible(false)
	car_blue_coll.set_deferred("disabled", true)
	
