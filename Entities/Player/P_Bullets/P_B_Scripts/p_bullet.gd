extends Node2D



var dir = Vector2(0, 1)

@export var bullet_speed = 700
@export var final_speed = 100
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position -= dir * delta * bullet_speed

	if ($RayCast2D.is_colliding()):
		var collid = $RayCast2D.get_collider().get_parent()
		if (collid.type == "ENEMY"):
			position += Vector2(2000, 2000)

			if (collid.maxHealth > 0):
				collid.take_damge(1)
			collid.advance_status()


func screen_exited():
	get_parent().remove_child(self)
	queue_free()
