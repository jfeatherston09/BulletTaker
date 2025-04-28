extends Node2D
on_ready get_child var is_active = $Underscore
func _on_ready:
	if is_active == 2:
		new_scene = load("res://Underscore2")
