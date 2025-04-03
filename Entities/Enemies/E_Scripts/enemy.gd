extends Node2D

class_name Enemy

@onready var bullet_scene = load("res://Entities/Enemies/E_Bullets/E_B_Scenes/e_bullet.tscn")

@onready var player = get_parent().get_parent().get_node("Player")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

	var target = Vector2(self.position.x, self.position.y + 100)
	#Tween.tween_property(self, "position", Vector2(1, 1), 1)
	#Tween.start()
##position, target, 3, Tween.TRANS_QUINT, Tween.EASE_OUT
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate(1 * delta)
	position.y += 50 * delta

	b.position.y += 35
	get_parent().add_child(b)
