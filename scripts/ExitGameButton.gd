extends MenuButton

func _on_exitSign_pressed() -> void:
	print("menu button clicked")
	get_tree().change_scene_to_file("res://scenes/LevelsScreen.tscn")
