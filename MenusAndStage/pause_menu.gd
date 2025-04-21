<<<<<<< Updated upstream
extends CanvasLayer

func _ready():
    pause_mode = "process"  # Keep processing when paused
=======
extends Control

func _ready():
	# Ensure pause menu still works even when the game is paused
	process_mode = Node.PROCESS_MODE_ALWAYS
	visible = false

func open():
	visible = true
	get_tree().paused = true

	# Optionally grab focus for controller navigation
	$MarginContainer/VBoxContainer/Resume.grab_focus()

func close():
	visible = false
	get_tree().paused = false

func _on_resume_pressed():
	close()

func _on_quit_pressed():
	get_tree().quit()
>>>>>>> Stashed changes

func set_paused(paused: bool):
    get_tree().paused = paused
    visible = paused
