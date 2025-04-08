extends Node2D

class_name Enemy

@onready var bullet_scene = load("res://Entities/Enemies/E_Bullets/E_B_Scenes/e_bullet.tscn")

@onready var player = get_parent().get_parent().get_node("Player")



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

	var target = Vector2(self.position.x, self.position.y + 100)
	var tween = create_tween()
	for sprite in get_children():
		tween.tween_property(sprite, "position", target, 1)

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	rotate(1 * delta)
	position.y += 50 * delta

	b.position.y += 35
	get_parent().add_child(b)
