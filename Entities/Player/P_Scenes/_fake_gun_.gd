extends Node2D

@onready var main = get.tree().get_root().get_node("Stage")
@onready var projectile = load("res://big_bullet.tcsn")
func _ready():
	shoot()

func shoot():
	var instance = big_bullet.instantiate()
	instance.dir = rotation
	instance.spawnPos = global_position
	instance.spawnRot = rotation
	main.add_child.call_deferred(instance)
