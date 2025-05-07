# fastEnemy.gd
extends Enemy

class_name Fast_Enemy

func _process(delta):
	# Override movement to go slower
	position.y += 5 * delta

	# Keep original behavior (if needed)
	if position.y > get_viewport_rect().size.y + 20:
		queue_free()

func _ready():
	$Timer.set_wait_time(0.5)
	$Timer.start()

	var target = Vector2(self.position.x, 100)
	var tween = create_tween()
	for sprite in get_children():
		tween.tween_property(sprite, "position", target, 1)

func spawn_bullets():
	var b1 = bullet_scene.instantiate()
	
	get_parent().add_child(b1)
	b1.bullet_speed = 1000
	b1.position = self.position
	b1.dir = Vector2(player.global_position.x - self.global_position.x, player.global_position.y - self.global_position.y).normalized()
