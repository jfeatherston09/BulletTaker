<<<<<<< Updated upstream
extends Node

@onready var pause_menu = $PauseMenu

func _unhandled_input(event):
    if Input.is_action_just_pressed("p1_start") or Input.is_action_just_pressed("p2_start"):
        toggle_pause()

    if get_tree().paused and (Input.is_action_just_pressed("p1_x") or Input.is_action_just_pressed("p2_x")):
        get_tree().quit()

func toggle_pause():
    var currently_paused = get_tree().paused
    pause_menu.set_paused(!currently_paused)



=======
extends Node2D  # Assuming this is on the Stage node

@onready var pause_menu = $PauseMenu

func _input(event):
	if event.is_action_pressed("p1_start") or event.is_action_pressed("p2_start"):
		if get_tree().paused:
			pause_menu._on_resume_pressed()
		else:
			pause_menu.open()

	if (event.is_action_pressed("p1_x") or event.is_action_pressed("p2_x")) and get_tree().paused:
		pause_menu._on_quit_pressed()
>>>>>>> Stashed changes

func _ready():
	print("pause_menu found: ", pause_menu)
