extends Node2D
func _ready():
	if is_active == 2:
		var new_scene = load("res://Underscore2")
		get_tree().change_scene_to_packed(new_scene)
