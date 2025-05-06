extends RichTextLabel
var JOY_AXIS_TRIGGER_LEFT = 0
var JOY_AXIS_TRIGGER_RIGHT = 0

func _input(event: InputEvent) -> void:
		if FrontalLobeScript.is_active == 1:
			if event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 0:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("A")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 1:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("B")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 2:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("C")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 3:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("D")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 4:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("E")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 5:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("F")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 6:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("G")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 7:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("H")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 8:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("I")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 9:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("J")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 10:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("K")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 11:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("L")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 12:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("M")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 13:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("N")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 14:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("O")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 15:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("P")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 16:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("Q")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 17:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("R")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 18:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("S")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 19:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("T")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 20:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("U")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 21:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("V")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 22:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("W")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 23:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("X")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 24:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("Y")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 25:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("Z")
			elif event.is_action_pressed("p1_left") and JOY_AXIS_TRIGGER_LEFT == 26:
				JOY_AXIS_TRIGGER_LEFT -= 26
				set_text("A")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 0:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("A")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 1:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("B")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 2:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("C")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 3:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("D")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 4:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("E")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 5:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("F")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 6:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("G")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 7:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("H")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 8:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("I")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 9:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("J")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 10:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("K")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 11:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("L")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 12:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("M")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 13:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("N")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 14:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("O")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 15:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("P")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 16:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("Q")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 17:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("R")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 18:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("S")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 19:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("T")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 20:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("U")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 21:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("V")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 22:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("W")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 23:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("X")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 24:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("Y")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 25:
				JOY_AXIS_TRIGGER_LEFT += 1
				set_text("Z")
			elif event.is_action_pressed("p2_left") and JOY_AXIS_TRIGGER_LEFT == 26:
				JOY_AXIS_TRIGGER_LEFT -= 26
				set_text("A")
		elif event.is_action_pressed("p1_down"):
			FrontalLobeScript.is_active+=1
		elif event.is_action_pressed("p2_down"):
			FrontalLobeScript.is_active+=1
