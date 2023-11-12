extends Node

var binAnims = ["hit_left", "hit_center", "hit_right"]
var binTypes = ["Bin_Trash", "Bin_Recycle", "Bin_Compost"]
var selectedAnim = 1
@export var whichAnim: String
@export var whichBin: String 

func _ready():
	whichAnim = binAnims[selectedAnim]
	whichBin = binTypes[selectedAnim]

func _input(event):
	if (event.is_action_pressed("select_left") && selectedAnim > 0):
		selectedAnim -= 1
		whichAnim = binAnims[selectedAnim]
		whichBin = binTypes[selectedAnim]
		
	if (event.is_action_pressed("select_right") && selectedAnim < 2):
		selectedAnim += 1
		whichAnim = binAnims[selectedAnim]
		whichBin = binTypes[selectedAnim]
