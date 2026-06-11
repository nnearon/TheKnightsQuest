extends Node2D

@onready var selected_label: Label = $selectedLabel

@onready var knight: AnimatedSprite2D = $charcters/knight
@onready var king_guy: AnimatedSprite2D = $charcters/kingGuy
@onready var dino: AnimatedSprite2D = $charcters/dino
@onready var princess: AnimatedSprite2D = $charcters/princess


#---------------------------------------------------------------------------------------------------


func _ready() -> void:
	selected_label.visible = false

	knight.stop()
	king_guy.stop()
	dino.stop()
	princess.stop()

func show_selected(message: String) -> void:
	selected_label.text = message
	selected_label.visible = true
	
	
	#---------------------------------------------------------------------------------------------------


func _on_select_1_pressed() -> void:
	Globals.selected_character = "knight"
	show_selected("Knight has been selected!")


func _on_select_1_mouse_entered() -> void:
	knight.play("idle")


func _on_select_1_mouse_exited() -> void:
	knight.stop()
	knight.frame = 0


#---------------------------------------------------------------------------------------------------


func _on_select_2_pressed() -> void:
	Globals.selected_character = "kingGuy"
	show_selected("King Guy has been selected!")

func _on_select_2_mouse_entered() -> void:
	king_guy.play("idle")


func _on_select_2_mouse_exited() -> void:
	king_guy.stop()
	king_guy.frame = 0


#---------------------------------------------------------------------------------------------------


func _on_select_3_pressed() -> void:
	Globals.selected_character = "dino"
	show_selected("Dino has been selected!")

func _on_select_3_mouse_entered() -> void:
	dino.play("idle")


func _on_select_3_mouse_exited() -> void:
	dino.stop()
	dino.frame = 0


#---------------------------------------------------------------------------------------------------


func _on_select_4_pressed() -> void:
	Globals.selected_character = "princess"
	show_selected("Princess has been selected!")


func _on_select_4_mouse_entered() -> void:
	princess.play("idle")


func _on_select_4_mouse_exited() -> void:
	princess.stop()
	princess.frame = 0
