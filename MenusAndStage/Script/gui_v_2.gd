extends Control

@onready var health_sprite = $VBoxContainer/Healthlost
@onready var bulletBarrel = $BulletAmmo

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var player = get_tree().root.get_node("Stage/Player")
	player.health_changed.connect(_on_player_health_changed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.is_action_just_pressed("p1_b")):
		bulletBarrel.frame =+ 1


func update_Healthlost(new_health: int) -> void:
	print("Health updated:", new_health)
	if new_health < health_sprite.sprite_frames.get_frame_count("Healthlost"):
		health_sprite.frame = new_health

func _on_player_health_changed(new_health: int) -> void:
	update_Healthlost(new_health)

