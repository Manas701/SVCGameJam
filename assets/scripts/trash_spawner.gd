extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_conductor_beat(position):
	if position % 2 == 0: # I think it should be every 2 beats 
		print(position)
		# Spawn trash?
		
		


func _on_conductor_measure_signal(_position):
	pass # Replace with function body.
