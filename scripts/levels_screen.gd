extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func _on_characters_pressed() -> void:
	print("charcters displyed")
	get_tree().change_scene_to_file("res://scenes/characterMenu.tscn")


func _on_main_menu_button_pressed() -> void:
	print("main menu")
	get_tree().change_scene_to_file("res://scenes/StartingScreen.tscn")



func _on_level_one_pressed() -> void:
	print("level one :D")
	get_tree().change_scene_to_file("res://scenes/levels/levelOne.tscn")

func _on_level_two_pressed() -> void:
	print("level two :D")
	get_tree().change_scene_to_file("res://scenes/levels/levelTwo.tscn")

func _on_level_three_pressed() -> void:
	print("level three :D")
	get_tree().change_scene_to_file("res://scenes/levels/levelThree.tscn")

func _on_level_four_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/levelFour.tscn")

func _on_level_five_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/levelFive.tscn")
