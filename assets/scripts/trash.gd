extends Node

@export_enum("Compost", "Recycling", "Trash") var trash_type: String

@onready var audio: = $AudioStreamPlayer

