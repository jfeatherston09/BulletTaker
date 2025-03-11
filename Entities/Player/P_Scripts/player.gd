extends CharacterBody2D

export (int) var speed = 200
export (int) var start_hp : int = 3
onready var hp := start_hp
var can_take_damage = true
onready var animation_player := $AnimationPlayer

export (bool) var clamp_to_window_borders = true
onready var screen_borders = Vector2(
	ProjectSettings.get_setting("display/window/size/height")
	ProjectSettings.get_setting("display/window/size/width")
)

func _physics_process(delta):
	var velocity := Vector2()
	velocity.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	velocity = velocity.normalized()

	velocity = move_and_slide(velocity * speed)

	if clamp_to_window_borders:
		position = Vector
