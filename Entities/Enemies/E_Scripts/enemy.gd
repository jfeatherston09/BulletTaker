extends Node2D

class_name Enemy

@onready var bullet_scene = load("res://Entities/Enemies/E_Bullets/E_B_Scenes/e_bullet.tscn")

@onready var player = get_parent().get_parent().get_node("Player")

var type = "ENEMY"

# Called when the node enters the scene tree for the first time.

func _ready():
	$Timer.set_wait_time(2)
	$Timer.start()


	var target = Vector2(self.position.x, 100)
	var tween = create_tween()
	for sprite in get_children():
		tween.tween_property(sprite, "position", target, 1)
		tween.start()
		
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#rotate(1 * delta)
	position.y += 50 * delta
	
	if (position.y > get_viewport_rect().size.y + 20):
		get_parent().remove_child(self)
		queue_free()

func spawn_bullets():
	var b1 = bullet_scene.instantiate()
	
	get_parent().add_child(b1)
	b1.bullet_speed = 800	
	b1.position = self.position
	b1.dir = Vector2(player.position.x - self.position.x, player.position.y - self.position.y).normalized()


###timeout():
func _on_timer_timeout():
	spawn_bullets()

