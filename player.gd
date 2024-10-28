extends CharacterBody2D

const SPEED = 300.0

func _physics_process(_delta):
	# Add the gravity.
	#if not is_on_floor():
	#	velocity += get_gravity() * delta

	var direction = Input.get_vector("left", "right", "up", "down")
	if direction:
		velocity = direction * SPEED
	else:
		velocity = Vector2i.ZERO

	move_and_slide()
