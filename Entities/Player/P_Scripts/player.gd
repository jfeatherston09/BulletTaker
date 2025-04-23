extends CharacterBody2D

class_name Player
var type = "PLAYER"
@export var speed = 200

const SPEED = 100.0
@onready var sprite : Sprite2D = $Sprite2D
@export var playerId : int = 0

@export var maxHealth = 3
@onready var currentHealth: int = maxHealth

var p_bullet = load("res://Entities/Player/P_Bullets/P_B_Scenes/p_bullet.tscn")

@onready var score_display = get_node("/root/Main/guiV2/panelContainer/score")

func _on_hit_enemy():
	score_display.add_score(10)
	
	sprite.play("hit_enemy")

func _on_got_hit():
	score_display.subtract_score(5)


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
	get_input()
	move_and_slide()

	if (Input.is_action_just_pressed("Shoot")):
		var b = p_bullet.instantiate()
		get_parent().add_child(b)
		b.position = self.position

func get_input():
	var input_direction = Input.get_vector("p1_left", "p1_right", "p1_up", "p1_down")
	velocity = input_direction * speed

func advance_status():
	get_parent().get_node("Label").text = get_parent().health_status[maxHealth]
