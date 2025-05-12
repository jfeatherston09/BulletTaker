extends Node2D

func _ready():
	if FrontalLobeScript.is_active == 2:
		var new_scene = load("res://Underscore2.tscn")
		get_tree().change_scene_to_packed(new_scene)

	if FrontalLobeScript.is_active == 3:
		var new_scene = load("res://Underscore3.tscn")
		get_tree().change_scene_to_packed(new_scene)