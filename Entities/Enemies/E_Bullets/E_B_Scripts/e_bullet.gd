extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position += Vector2(1, 0).rotated(rotation)
	
	if ($RayCast2D.collide_with_bodies):
		print("Hit!")
