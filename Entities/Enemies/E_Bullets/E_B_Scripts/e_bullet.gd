extends Node2D

class_name Bullet

var dir = Vector2(1, 0)

@export var bullet_speed = 100
@export var final_speed = 100

# Called when the node enters the scene tree for the first time
func _ready() -> void:
	pass  # Replace with function body if needed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += dir * delta * bullet_speed

	# Check for collision with RayCast2D (or collision detection)
	if $RayCast2D.is_colliding():
		var collid = $RayCast2D.get_collider().get_parent()

		# Check if the object is a Player before calling take_damage
		if collid is Player:
			position += Vector2(2000, 2000)  # Move the bullet off-screen
			if collid.maxHealth > 0:
				collid.take_damge(1)  # Call take_damage if it's a valid player
				collid.advance_status()  # Update the player's health or status

func screen_exited():
	get_parent().remove_child(self)
	queue_free()
