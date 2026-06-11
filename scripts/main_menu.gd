extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_startButton_pressed() -> void:
	print("game started!")
	get_tree().change_scene_to_file("res://scenes/levels/levelOne.tscn")


func _on_exitButton_pressed() -> void:
	print("you exited :c")
	get_tree().quit()
