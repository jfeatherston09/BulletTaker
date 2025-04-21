extends CanvasLayer

func _ready():
    pause_mode = "process"  # Keep processing when paused

func set_paused(paused: bool):
    get_tree().paused = paused
    visible = paused
