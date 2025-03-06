extends Node2D

class_name Enemy

var bullet_scene = load("res://Entities/Enemies/E_Bullets/E_B_Scenes/e_bullet.tscn")

@onready var player = get_parent().get_node("Player")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.set_wait_time(0.6)
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate(1 * delta)
	

func spawn_bullets():
	var b1 = bullet_scene.instantiate()
	#add_child(b1)
	b1.position = self.position
	b1.dir = Vector2(player.position.x - self.position.x, player.position.y - self.position.y).normalized()
	
	#b1.position.y += 35
	#b2.position.y += 35
	get_parent().add_child(b1)


###timeout():
func _on_timer_timeout():
	spawn_bullets()
