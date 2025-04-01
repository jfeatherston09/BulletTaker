extends RichTextLabel
JOY_AXIS_TRIGGER_LEFT = KEY_UP
JOY_AXIS_TRIGGER_RIGHT = KEY_DOWN
var JOY_AXIS_TRIGGER_LEFT = KEY_UP
var JOY_AXIS_TRIGGER_RIGHT = KEY_DOWN
func _input(event:InputEvent):
	if(event.is_action_pressed("JOY_AXIS_TRIGGER_LEFT")):
		("2370,56")
		var JOY_AXIS_TRIGGER_LEFT=+1 
	
	else: 

		var JOY_AXIS_TRIGGER_LEFT = 0 
	if(event.is_action_pressed("JOY_AXIS_TRIGGER_LEFT")) and var JOY_AXIS_TRIGGER_LEFT = 1:

			("2370,56")
			var JOY_AXIS_TRIGGER_LEFT=+1 
	else: 

		var JOY_AXIS_TRIGGER_LEFT = 1
