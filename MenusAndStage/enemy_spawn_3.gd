extends Spawner

func _ready():
    enemy_scene = [load("res://Entities/Enemies/E_Scenes/enemy_3.tscn")]
    randomize()
    $Timer.set_wait_time(25)
    $Timer.start()

func _on_timer_timeout():
    for i in range(4):  # Spawn 2 enemies per timer timeout
        var enemy = enemy_scene[0].instantiate()
        enemy.position.x = randf_range(-190, 190)
        enemy.position.y = -107
        add_child(enemy)