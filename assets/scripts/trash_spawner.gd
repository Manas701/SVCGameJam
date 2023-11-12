extends Node3D

var bpm = 120

var song_position: = 0.0
var song_position_in_beats: = 0
var last_spawned_beat = 0
var sec_per_beat = 60.0 / bpm

var spawn_1_beat = 0
var spawn_2_beat = 0
var spawn_3_beat = 1
var spawn_4_beat = 0# Called when the node enters the scene tree for the first time.

var trash = preload("res://prefabs/trash.tscn")

func _ready():
	randomize()
	$Conductor.play_with_beat_offset(0)



func _spawn_trash():
	var trashInst = trash.instantiate()
	add_child(trashInst)
	var anim = trashInst.get_node("AnimationPlayer")
	anim.play("throw_trash")
	

func _on_conductor_measure_signal(position):
	if position == 1:
		_spawn_trash()


func _on_conductor_beat(position):
	song_position_in_beats = position
	if (song_position_in_beats >= 0 && song_position_in_beats < 16):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 20 && song_position_in_beats < 32):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 36 && song_position_in_beats < 44):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 48 && song_position_in_beats < 56):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 60 && song_position_in_beats < 76):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 84 && song_position_in_beats < 100):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 108 && song_position_in_beats < 112):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 116 && song_position_in_beats < 128):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 132 && song_position_in_beats < 140):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 144 && song_position_in_beats < 152):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 156 && song_position_in_beats < 172):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 180 && song_position_in_beats < 196):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 204 && song_position_in_beats < 208):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 212 && song_position_in_beats < 224):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 228 && song_position_in_beats < 236):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 240 && song_position_in_beats < 248):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 252 && song_position_in_beats < 268):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 276 && song_position_in_beats < 292):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 300 && song_position_in_beats < 304):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 308 && song_position_in_beats < 320):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 324 && song_position_in_beats < 332):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 336 && song_position_in_beats < 340):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 348 && song_position_in_beats < 364):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	if (song_position_in_beats >= 372 && song_position_in_beats < 388):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	
	
	

func increment_score(by):
	pass # Replace with function body.
