extends CharacterBody2D

const SPEED = 100.0
@onready var sprite : Sprite2D = $Sprite2D
@export var playerId : int = 0

func _physics_process(_delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()

	var hDirection = Input.get_axis("p%s_left" % playerId, "p%s_right" % playerId)
	if hDirection:
		velocity.x = hDirection * SPEED

	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)


	var vDirection = Input.get_axis("p%s_up" % playerId, "p%s_down" % playerId)
	if vDirection:
		velocity.y = vDirection * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
