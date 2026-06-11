extends Area2D

@onready var timer: Timer = $Timer
@onready var youDied: Label = get_tree().current_scene.find_child("youDied", true, false)
@onready var hurt_sound: AudioStreamPlayer2D = $hurtSound

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		print("you ded :/")
		hurt_sound.play()

		if youDied:
			youDied.visible = true

		Engine.time_scale = 0.5

		body.set_physics_process(false)
		body.velocity = Vector2.ZERO
		body.get_node("AnimatedSprite2D").play("dying")
		body.get_node("CollisionShape2D").queue_free()

		timer.start()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
