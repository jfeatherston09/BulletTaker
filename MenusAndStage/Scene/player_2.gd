extends Player

@export var player1_path: NodePath
var player1_ref: Player

@export var player2_speed := 200




func _ready():
	super._ready()
	speed = player2_speed
	player1_ref = get_node(player1_path)

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

	# Replace 'p_bullet' with your bullet scene if needed
	if Input.is_action_just_pressed("p2_b"):
		if p_bullet:  # make sure this is defined in `Player` or override it here
			var b = p_bullet.instantiate()
			get_parent().add_child(b)
			b.position = self.position

func take_damge(_amount: int):
	if player1_ref:
		player1_ref.take_damge(_amount)
