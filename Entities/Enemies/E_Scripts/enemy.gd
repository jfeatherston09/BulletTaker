extends Node2D

class_name Enemy

@onready var bullet_scene = load("res://Entities/Enemies/E_Bullets/E_B_Scenes/e_bullet.tscn")

@onready var player = get_parent().get_parent().get_node("Player")


# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.set_wait_time(0.6)
	$Timer.start()

	var target = Vector2(self.position.x, self.position.y)
	var tween = create_tween()
	for sprite in get_children():
		tween.tween_property(sprite, "posiiton", target, 1)
		
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#rotate(1 * delta)
	position.y += 50 * delta
	
func spawn_bullets():
	var b1 = bullet_scene.instantiate()
	b1.position = self.position
	b1.dir = Vector2(player.position.x - self.position.x, player.position.y - self.position.y).normalized()
	get_parent().add_child(b1)
	


###timeout():
func _on_timer_timeout():
	spawn_bullets()
