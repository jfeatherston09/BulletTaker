extends RichTextLabel

var JOY_AXIS_TRIGGER_LEFT = 0
var JOY_AXIS_TRIGGER_RIGHT = 0

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("joy_left"):
		JOY_AXIS_TRIGGER_LEFT += 1
		set_text("A")
	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 1:
		JOY_AXIS_TRIGGER_LEFT += 1
		set_text("B")
	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 2:
		JOY_AXIS_TRIGGER_LEFT += 1
		set_text("C")
	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 3:
		JOY_AXIS_TRIGGER_LEFT += 1
		set_text("D")
	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 4:
		JOY_AXIS_TRIGGER_LEFT += 1
		set_text("E")
	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 5:
		JOY_AXIS_TRIGGER_LEFT += 1
		set_text("F")
	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 6:
		JOY_AXIS_TRIGGER_LEFT += 1
		set_text("G")
	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 7:
		JOY_AXIS_TRIGGER_LEFT += 1
		set_text("H")
	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 8:
		JOY_AXIS_TRIGGER_LEFT += 1
		set_text("I")
	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 9:
		JOY_AXIS_TRIGGER_LEFT += 1
		set_text("J")
	if event.is_action_pressed("joy_left") and JOY_AXIS_TRIGGER_LEFT == 10: 
		JOY_AXIS_TRIGGER_LEFT += 1
		set_text("K")