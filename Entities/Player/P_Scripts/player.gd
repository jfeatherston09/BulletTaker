extends CharacterBody2D

@export var speed = 200
@export var start_hp : int = 3
@onready var hp := start_hp
var can_take_damage = true
@onready var animation_player := $AnimationPlayer

@export var clamp_to_window_borders = true
@onready var screen_borders = Vector2(
	ProjectSettings.get_setting("display/window/size/height"),
	ProjectSettings.get_setting("display/window/size/width")
)

func _physics_process(delta):
	var velocity := Vector2()
	velocity.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	velocity = velocity.normalized()

	velocity = move_and_slide(velocity * speed)

	if clamp_to_window_borders:
		global_position = Vector2(clamp(position.x, 0, screen_borders.x), clamp(position.y, 0, screen_borders.y))

func take_damage():
	if (can_take_damage):
		can_take_damage = false
		hp -= 1
		animation_player.play("Hit")

	else:
		return


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "Hit":
		can_take_damage = true
