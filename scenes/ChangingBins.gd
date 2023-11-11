extends Node

var binAnims = ["hit_left", "hit_center", "hit_right"]
var selectedAnim = 1
@export var whichBin: String

func _ready():
	whichBin = binAnims[selectedAnim]

func _input(event):
	if (event.is_action_pressed("select_left") && selectedAnim > 0):
		selectedAnim -= 1
		whichBin = binAnims[selectedAnim]
		
	if (event.is_action_pressed("select_right") && selectedAnim < 2):
		selectedAnim += 1
		whichBin = binAnims[selectedAnim]
