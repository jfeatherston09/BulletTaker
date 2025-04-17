extends Node2D

@onready var pause_menu = $CanvasLayer/PauseMenu
@onready var resume_button = $CanvasLayer/PauseMenu/MarginContainer/VBoxContainer/Resume
@onready var quit_button = $CanvasLayer/PauseMenu/MarginContainer/VBoxContainer/Quit

func _input(event):
	if event.is_action_pressed("p1_start") or event.is_action_pressed("p2_start"):
		if get_tree().paused:
			resume_button.emit_signal("pressed")
		else:
			pause_menu.open()

	if (event.is_action_pressed("p1_x") or event.is_action_pressed("p2_x")) and get_tree().paused:
		quit_button.emit_signal("pressed")



