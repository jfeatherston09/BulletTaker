extends Node2D

func _ready():
    if FrontalLobeScript.is_active == 2:
        get_tree().change_scene_to_file("res://Underscore2.tscn")
