extends Node

@onready var resume_label: Label = $ResumeLabel

func _ready():
	resume_label.visible = false

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("p1_start") or event.is_action_pressed("p2_start"):
		toggle_pause()

func toggle_pause():
	get_tree().paused = not get_tree().paused
	resume_label.visible = get_tree().paused
