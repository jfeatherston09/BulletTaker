extends Control

var currentFrame = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

@onready var bulletGUI = $BulletsAmmo
@onready var reloadCooldown = get_node("BulletsAmmo/reloadCooldown")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.is_action_just_pressed("Shoot")):
		if currentFrame < 16:
			bulletGUI.frame += 1
			currentFrame += 1
	if (Input.is_action_just_pressed("Reload")):
		reloadCooldown.start()
		reloadCooldown.timeout.connect(_on_timer_timeout)
		
func _on_timer_timeout():
	bulletGUI.frame = 0
	currentFrame = 0
			
