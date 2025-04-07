extends Node2D

class_name Spawner


var enemy_scene = [load("res://Entities/Enemies/E_Scenes/enemy.tscn")]
# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.set_wait_time(1)
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func timeout():
	var enemy = enemy_scene.instantiate()
	randomize()
	enemy.position.x = randf_range(-190, 190)
	enemy.position.y = -107
	add_child(enemy)
