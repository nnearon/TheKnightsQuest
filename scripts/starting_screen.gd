extends Node2D

func _on_start_button_pressed() -> void:
	print("game started!")
	get_tree().change_scene_to_file("res://scenes/levels/levelOne.tscn")


func _on_exit_button_pressed() -> void:
	print("you exited :c")
	get_tree().quit()


func _on_levels_button_pressed() -> void:
	print("levels screen")
	get_tree().change_scene_to_file("res://scenes/LevelsScreen.tscn")
