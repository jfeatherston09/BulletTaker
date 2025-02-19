extends Node2D

var bullet_scene = load("res://Entities/Enemies/E_Bullets/E_B_Scenes/e_bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate(.05)

	var b = bullet_scene.instance()

	b.position.x += 100
	add_child(b)
