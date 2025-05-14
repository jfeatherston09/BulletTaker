extends Node

var max_health := 2
var current_health := max_health

signal health_changed(new_health)

func take_damage(amount: int):
	current_health = clamp(current_health - amount, 0, max_health)
	emit_signal("health_changed", current_health)
	if current_health == 0:
		game_over()

func game_over():
	print("Both players are dead!")
	get_tree().change_scene_to_file("res://MenusAndStage/Scene/game_over.tscn")
