extends Control


func _input(event):
	if (event.is_action_pressed("startGame")):
		startGame()

func startGame():
	get_tree().change_scene_to_file("res://scenes/manasScene.tscn")
