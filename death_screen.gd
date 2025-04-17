extends Node2D


if Underscore is_active = true:
	if Input.is_action_pressed(joy_down):
		var new_scene = load("res://Underscore2")
		get_tree().change_scene_to_packed(new_scene)
		Underscore var is_active = false:
