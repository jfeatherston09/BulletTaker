extends RichTextLabel

var JOY_AXIS_TRIGGER_LEFT = 0
var JOY_AXIS_TRIGGER_RIGHT = 0

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("joy_left"):
		JOY_AXIS_TRIGGER_LEFT += 1
		$RichTextLabel.append_text("A")
	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 1:
		position = Vector2(1587, -159)
		JOY_AXIS_TRIGGER_LEFT += 1

	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 2:
		position = Vector2(1587, -159)
		JOY_AXIS_TRIGGER_LEFT += 1

	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 3:
		position = Vector2(1587, -159)
		JOY_AXIS_TRIGGER_LEFT += 1

	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 4:
		position = Vector2(1587, -159)
		JOY_AXIS_TRIGGER_LEFT += 1

	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 5:
		position = Vector2(1587, -159)
		JOY_AXIS_TRIGGER_LEFT += 1

	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 6:
		position = Vector2(1587, -159)
		JOY_AXIS_TRIGGER_LEFT += 1

	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 7:
		position = Vector2(1587, -159)
		JOY_AXIS_TRIGGER_LEFT += 1

	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 8:
		position = Vector2(1587, -159)
		JOY_AXIS_TRIGGER_LEFT += 1

	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 9:
		position = Vector2(1587, -159)
		JOY_AXIS_TRIGGER_LEFT += 1

	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 10:
		position = Vector2(1587, -159)
		JOY_AXIS_TRIGGER_LEFT += 1
