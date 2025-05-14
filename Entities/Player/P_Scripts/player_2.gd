extends Player
func _physics_process(delta):
	var direction := Vector2.ZERO

	if Input.is_action_pressed("p2_right"):
		direction.x += 1
	if Input.is_action_pressed("p2_left"):
		direction.x -= 1
	if Input.is_action_pressed("p2_down"):
		direction.y += 1
	if Input.is_action_pressed("p2_up"):
		direction.y -= 1

	if direction != Vector2.ZERO:
		direction = direction.normalized()

	velocity = direction * speed
	move_and_slide()


	if (Input.is_action_just_pressed("p2_b")):
		var b = p_bullet.instantiate()
		get_parent().add_child(b)
		b.position = self.position
