extends CharacterBody2D

const SPEED = 130.0
const JUMP_VELOCITY = -300.0

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var jump_sound: AudioStreamPlayer2D = $jumpSound

@export var knight_frames: SpriteFrames
@export var king_guy_frames: SpriteFrames
@export var dino_frames: SpriteFrames
@export var princess_frames: SpriteFrames


func _ready() -> void:
	match Globals.selected_character:
		"knight":
			animated_sprite.sprite_frames = knight_frames
		"kingGuy":
			animated_sprite.sprite_frames = king_guy_frames
		"dino":
			animated_sprite.sprite_frames = dino_frames
		"princess":
			animated_sprite.sprite_frames = princess_frames


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		jump_sound.play()

	var direction := Input.get_axis("moveLeft", "moveRight")

	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true

	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")

	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
