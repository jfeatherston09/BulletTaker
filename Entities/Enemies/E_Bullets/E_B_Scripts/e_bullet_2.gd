extends Bullet
var dir2

func _process(delta):
	self.position += dir2 * delta * bullet_speed

	if ($RayCast2D.is_colliding()):
		var collid = $RayCast2D.get_collider().get_parent()
		if (collid.type is Player):
			position += Vector2(2000, 2000)

			if (collid.maxHealth > 0):
				collid.take_damge(1)
			collid.advance_status()