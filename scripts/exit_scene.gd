extends Area2D

@export var next_level_path: String

@onready var game_manager: Node = %"game manager"

func _on_body_entered(body):
	if body.name == "player":
		if game_manager.collected_all_coins():
			get_tree().call_deferred("change_scene_to_file", next_level_path)
		else:
			print("Collect all coins first!")
