extends Node2D

class_name Bullet

var dir = Vector2(0, 1)

@export var bullet_speed = 100
@export var final_speed = 100
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position -= dir * delta * bullet_speed


func screen_exited():
	get_parent().remove_child(self)
	queue_free()
