extends Node2D
var enemyMovement = 10
var enemyMovementLong = 20 * 2

onready var enemyStartPositionY = self.position.y
var commands = ["right", "left"]

func _physics_process(delta):
	if commands.empty():
		return
	match commands.pop_front():
		"right":
		
		"left":
