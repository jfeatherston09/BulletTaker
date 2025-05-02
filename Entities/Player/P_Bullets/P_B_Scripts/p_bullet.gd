extends Area2D

@export var bullet_speed = 700
var dir = Vector2(0, 1)

# Called when the node enters the scene tree for the first time
func _ready() -> void:
	# Connect to the "body_entered" signal for collision detection
	#connect("body_entered", Callable(self, "_on_body_entered"))
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame
func _process(delta):
	position -= dir * delta * bullet_speed

# Handle collision when the bullet enters another object
func _on_body_entered(body):
	print("Bullet collided with: ", body)
	if body is Enemy:
		print("Enemy hit!")
		body.take_damge(1)
		queue_free()

func screen_exited():
	# Remove the bullet when it leaves the screen
	queue_free()
