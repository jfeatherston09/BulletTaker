#extends Spawner

#enemy_scene = [load("res://Entities/Enemies/E_Scenes/enemy_2.tscn")
#]

#func _ready():
#	$Timer.set_wait_time(20)
#	$Timer.start()


#func _on_timer_timeout():
#	for i in range(2):
#		enemy = enemy_scene[0].instantiate()
#		randomize()
#		enemy.position.x = randf_range(-190, 190)
#		enemy.position.y = -107
#		add_child(enemy)
extends Node  # or `Spawner` if Spawner is a custom class

# Declare the enemy scene array
var enemy_scene = [load("res://Entities/Enemies/E_Scenes/enemy_2.tscn")]

func _ready():
    $Timer.set_wait_time(20)  # Set the wait time for enemy spawn
    $Timer.start()

func _on_timer_timeout():
    for i in range(2):  # Spawn 2 enemies per timer timeout
        var enemy = enemy_scene[0].instantiate()  # Instantiate an enemy from the array
        randomize()  # Ensures randomness
        enemy.position.x = randf_range(-190, 190)  # Random X position
        enemy.position.y = -107  # Set Y position (off-screen to start)
        add_child(enemy)  # Add the enemy to the scene
