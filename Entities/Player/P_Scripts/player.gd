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
	currentHealth = clamp(currentHealth, 0, health_textures.size() - 1)
	update_health_display()
	emit_signal("health_changed", currentHealth)
	
	is_invincible = true
	iframe_timer.wait_time = 10.0
	iframe_timer.start()
	
	ScoreManager.reduce_score_on_hit()
	
	if currentHealth == 0:
		die()

func die():
	print("player has died!")
	
	GlobalState.final_score = ScoreManager.get_score()
	get_tree().change_scene_to_file("res://MenusAndStage/Scene/game_over.tscn")

@onready var iframe_timer: Timer = $IFramesTimer
var is_invincible: bool = false
var _on_iframe_timer_timeout
var iframe_timer_timer

func _ready():
	iframe_timer.timeout.connect(_on_i_frames_timer_timeout)

func update_health_display():
	if currentHealth >= 3 and currentHealth < health_textures.size():
		Health_lost_sprite.frame = 1

var p_bullet = load("res://Entities/Player/P_Bullets/P_B_Scenes/p_bullet.tscn")




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


func _on_i_frames_timer_timeout() -> void:
	is_invincible = false
