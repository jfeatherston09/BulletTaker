extends CharacterBody2D

class_name Player
var type = "PLAYER"
@export var speed = 200

func get_input():
	var input_direction = Input.get_vector("p1_left", "p1_right", "p1_up", "p1_down")
	velocity = input_direction * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()
