extends CharacterBody2D

class_name Player
var type = "PLAYER"
@export var speed = 200

const SPEED = 100.0
@onready var sprite : AnimatedSprite2D = $AnimatedSprite2D
@export var playerId : int = 0

@export var maxHealth = 200
@onready var currentHealth: int = maxHealth

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
func get_input():
	var input_direction = Input.get_vector("p1_left", "p1_right", "p1_up", "p1_down")
	velocity = input_direction * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()
