extends Node

var binAnims = ["hit_left", "hit_center", "hit_right"]
var binTypes = ["Bin_Trash", "Bin_Recycle", "Bin_Compost"]
var selectedAnim = 1
@export var whichAnim: String
@export var whichBin: String
#@onready var anim = $UI_Arrow/AnimationPlayer

func _ready():
	whichAnim = binAnims[selectedAnim]
	whichBin = binTypes[selectedAnim]
#	anim.play("hover")

func _input(event):
	if (event.is_action_pressed("select_left") && selectedAnim > 0):
		selectedAnim -= 1
		whichAnim = binAnims[selectedAnim]
		whichBin = binTypes[selectedAnim]
		get_node("UI_Arrow").translate(Vector3(-8, 0, 0))

	if (event.is_action_pressed("select_right") && selectedAnim < 2):
		selectedAnim += 1
		whichAnim = binAnims[selectedAnim]
		whichBin = binTypes[selectedAnim]
		get_node("UI_Arrow").translate(Vector3(8, 0, 0))
