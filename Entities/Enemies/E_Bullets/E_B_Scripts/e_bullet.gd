extends Node2D

class_name Bullet

var dir = Vector2(1, 0)
var gui_scene = preload("res://MenusAndStage/guiV2.tscn").instantiate()
var healthPhase = gui_scene.get_node("VBoxContainer/health").frame

@export var bullet_speed = 100
@export var final_speed = 100
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position += dir * delta * bullet_speed

	if ($RayCast2D.is_colliding()):
		var collid = $RayCast2D.get_collider().get_parent()
		if (collid.type == "PLAYER"):
			position += Vector2(2000, 2000)

			if (collid.maxHealth > 0):
				collid.take_damge(1)
			collid.advance_status()



func screen_exited():
	get_parent().remove_child(self)
	queue_free()
