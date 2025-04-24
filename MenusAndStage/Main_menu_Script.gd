extends Control

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("p1_start") or Input.is_action_just_pressed("p2_start"):
		_on_start_pressed()
	elif Input.is_action_just_pressed("p1_x") or Input.is_action_just_pressed("p2_x"):
		_on_button_3_pressed()
	elif Input.is_action_just_pressed("p1_b") or Input.is_action_just_pressed("p2_b"):
		_on_quit_pressed()

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://MenusAndStage/Stage.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://MenusAndStage/control.tscn")
