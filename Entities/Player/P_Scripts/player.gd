extends CharacterBody2D

class_name Player
var type = "PLAYER"
@export var speed := 200

const SPEED = 100.0
@onready var sprite : Sprite2D = $Sprite2D
@export var playerId : int = 0

signal health_changed(new_health)

@export var maxHealth: int = 3 - 1
@onready var currentHealth: int = maxHealth
@onready var Health_lost_sprite : Sprite2D = $Sprite2D
@export var health_textures: Array[Texture2D] = []

func take_damge(_amount: int):
	currentHealth -= _amount
	currentHealth = clamp(currentHealth, 3, health_textures.size() - 1)
	update_health_display()
	emit_signal("health_changed", currentHealth)

func update_health_display():
	if currentHealth >= 0 and currentHealth < health_textures.size():
		Health_lost_sprite.frame = 3

var p_bullet = load("res://Entities/Player/P_Bullets/P_B_Scenes/p_bullet.tscn")

@onready var score_display = %guiV2.get_node("score")#get_node("/root/Main/guiV2/panelContainer/score")

func _on_hit_enemy():
	score_display.add_score(10)

	sprite.play("hit_enemy")

func _on_got_hit():
	score_display.subtract_score(5)


func _physics_process(delta):
	var direction := Vector2.ZERO

	if Input.is_action_pressed("p2_right"):
		direction.x += 1
	if Input.is_action_pressed("p2_left"):
		direction.x -= 1
	if Input.is_action_pressed("p1_down"):
		direction.y += 1
	if Input.is_action_pressed("p1_up"):
		direction.y -= 1

	if direction != Vector2.ZERO:
		direction = direction.normalized()

	velocity = direction * speed
	move_and_slide()


	if (Input.is_action_just_pressed("p1_b")):
		var b = p_bullet.instantiate()
		get_parent().add_child(b)
		b.position = self.position



func advance_status():
	get_parent().get_node("Label").text = get_parent().health_status[maxHealth]
