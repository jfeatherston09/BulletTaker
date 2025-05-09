extends Control

@onready var health_sprite = $VBoxContainer/Healthlost

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var player = get_tree().root.get_node("Stage/Player")
	player.health_changed.connect(_on_player_health_changed)
@onready var bulletGUI = $BulletAmmo
var currentFrame := 0
@onready var this_scene = $guiV2
@onready var player_scene = load("res://Entities/Player/P_Scenes/player.tscn").instantiate()
func bullet_data_transfer(old_scene, new_scene):
	old_scene.currentFrame = new_scene.get_script().theFrame

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.is_action_just_pressed("p1_b")):
		bullet_data_transfer(this_scene, player_scene)
		if currentFrame < 16:
			bulletGUI.frame += 1 
			currentFrame += 1
	if (Input.is_action_just_pressed("p2_l1")):
		bulletGUI.frame = 0
		currentFrame = 0



func update_Healthlost(new_health: int) -> void:
	print("Health updated:", new_health)
	if new_health < health_sprite.sprite_frames.get_frame_count("Healthlost"):
		health_sprite.frame = new_health

func _on_player_health_changed(new_health: int) -> void:
	update_Healthlost(new_health)
