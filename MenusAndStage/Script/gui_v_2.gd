extends Control

var health_sprite

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var player = get_node("/root/Main/player/CharacterBody2D")
	player.health_changed.connect(_on_player_health_changed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_Healthlost(new_health: int) -> void:
	print("Health updated:", new_health)
	if new_health >= 0 and new_health < health_sprite.sprite_frames.get_frames.get_frame_count("default"):
		health_sprite.frame = new_health

func _on_player_health_changed(new_health: int) -> void:
	update_Healthlost(new_health)
