extends Node2D

var bullet_scene = load("res://Entities/Enemies/E_Bullets/E_B_Scenes/e_bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	rotate(.05)
	
	var b = bullet_scene.instantiate()
	add_child(b)
	b.position = self.position
	b.rotation = self.rotation

	b.position.y += 35
	get_parent().add_child(b)
