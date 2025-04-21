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




