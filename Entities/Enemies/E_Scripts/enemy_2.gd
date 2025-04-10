# FastEnemy.gd
extends Enemy

func _process(delta):
	# Override movement to go faster
	position.y += 120 * delta

	# Keep original behavior (if needed)
	if position.y > get_viewport_rect().size.y + 20:
		queue_free()