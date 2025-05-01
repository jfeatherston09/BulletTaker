extends Control

var currentFrame = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

@onready var bulletGUI = $BulletsAmmo
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.is_action_just_pressed("Shoot")):
		if currentFrame < 16:
			bulletGUI.frame += 1
