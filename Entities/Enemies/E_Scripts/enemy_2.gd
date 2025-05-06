# slowEnemy.gd
extends Enemy

class_name Slow_Enemy

func _process(delta):
	# Override movement to go slower
	position.y += 10 * delta

	# Keep original behavior (if needed)
	if position.y > get_viewport_rect().size.y + 20:
		queue_free()
