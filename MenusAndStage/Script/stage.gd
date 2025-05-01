extends Node2D

var health_status = [
	"REST IN PEPPERONI BOZO",
	"YEOWCH YOU LOST A LIFE",
	"YOUR SHIP IS AT FULL HEALTH",
	
]

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
	var player = $Player
	var gui = get_node("$guiV2")
	
	if player and gui:
		player.health_changed.connect(gui.update_Healthlost)
