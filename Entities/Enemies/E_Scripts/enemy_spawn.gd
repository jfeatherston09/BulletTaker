extends Node2D

class_name Spawner


var enemy_scene = load("res://Entities/Enemies/E_Scenes/enemy.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	var enemy = enemy_scene.instantiate()
	add_child(enemy)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
