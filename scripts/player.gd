extends CharacterBody2D

@onready var animate_sprite = $AnimatedSprite2D

const SPEED = 130.0
const JUMP_VELOCITY = -300.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("up") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		$AudioStreamPlayer2D.play()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		if direction < 0:
			animate_sprite.flip_h = true
			animate_sprite.play("run")
		elif direction > 0:
			animate_sprite.flip_h = false
			animate_sprite.play("run")
		else:
			animate_sprite.play("idle")
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		animate_sprite.play("idle")

	move_and_slide()
