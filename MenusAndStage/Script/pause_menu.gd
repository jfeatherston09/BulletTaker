extends Node

@onready var resume_label: Label = $ResumeLabel
@onready var pause_music: AudioStreamPlayer2D = $PauseMusic

func _ready():
	resume_label.visible = false
	pause_music.stop()  # Ensure music is stopped initially

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("p1_start") or event.is_action_pressed("p2_start"):
		toggle_pause()

func toggle_pause():
	get_tree().paused = not get_tree().paused
	resume_label.visible = get_tree().paused
	
	if get_tree().paused:
		pause_music.play()
	else:
		pause_music.stop()
