extends CanvasLayer

@onready var coin_label: Label = $HBoxContainer/Label


func update_coins(current: int, total: int) -> void:
	coin_label.text = str(current) + " / " + str(total)
