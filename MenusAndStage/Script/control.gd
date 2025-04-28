extends Control

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("p1_b") or Input.is_action_just_pressed("p2_b"):
		_on_start_pressed()

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://MenusAndStage/Scene/Main_Menu_Scene.tscn")
