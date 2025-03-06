extends RichTextLabel

var JOY_AXIS_TRIGGER_LEFT = KEY_UP
var JOY_AXIS_TRIGGER_RIGHT = KEY_DOWN
var JOY_AXIS_TRIGGER_LEFT = 0 
var JOY_AXIS_TRIGGER_RIGHT = 0
func _input(event ; InputEvent):
    if(event.is_action_pressed("JOY_AXIS_TRIGGER_LEFT")):
        JOY_AXIS_TRIGGER_LEFT == 1
        print_rich_change("A")

