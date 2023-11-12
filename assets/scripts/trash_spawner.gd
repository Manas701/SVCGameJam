extends Node3D

var bpm = 120

var song_position = 0.0
var song_position_in_beats = 0
var last_spawned_beat = 0
var sec_per_beat = 60.0 / bpm

var spawn_1_beat = 0
var spawn_2_beat = 0
var spawn_3_beat = 1
var spawn_4_beat = 0# Called when the node enters the scene tree for the first time.

#var trash = load(res://pre)

func _ready():
	randomize()
	$Conductor.play_with_beat_offset(0)


func _on_Conductor_measure(position):
	if position == 1:
		_spawn_trash(spawn_1_beat)
	elif position == 2:
		_spawn_trash(spawn_2_beat)
	elif position == 3:
		_spawn_trash(spawn_3_beat)
	elif position == 4:
		_spawn_trash(spawn_4_beat)


func _on_Conductor_beat(_position):
	song_position_in_beats = position
	if (song_position_in_beats >= 1 && song_position_in_beats < 16):
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
	if (song_position_in_beats >= 1 && song_position_in_beats < 16):
		spawn_1_beat = 0
		spawn_2_beat = 1
		spawn_3_beat = 0
		spawn_4_beat = 0
	
	

func _spawn_trash(to_spawn):
	pass # Replace with function body.
	
	

func increment_score(by):
	pass # Replace with function body.
