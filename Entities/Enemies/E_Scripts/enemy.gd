extends Node2D

class_name Enemy

var bullet_scene = load("res://Entities/Enemies/E_Bullets/E_B_Scenes/e_bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	rotate(0.15)
	spawn_bullets()

func spawn_bullets():
	var b1 = bullet_scene.instantiate()
	#add_child(b1)
	b1.position = self.position
	b1.rotation = self.rotation
	b1.dir = Vector2(1, 0)

	var b2 = bullet_scene.instantiate()
	#add_child(b2)
	b2.position = self.position
	b2.rotation = self.rotation
	b1.dir = Vector2(1, 0)
	
	#b1.position.y += 35
	#b2.position.y += 35
	get_parent().add_child(b1)
	get_parent().add_child(b2)
