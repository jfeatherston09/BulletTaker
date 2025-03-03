extends Node2D

class_name Bullet

var dir = Vector2(1, 0)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position += dir.rotated(rotation)
	
	if ($RayCast2D.collide_with_bodies):
		pass
