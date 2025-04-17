extends Control

@onready var main = $"../../"  # Or wherever your main scene node is

func _ready():
    # Prevent this menu from pausing along with the game
    process_mode = Node.PROCESS_MODE_ALWAYS
    visible = false

func open():
    visible = true
    get_tree().paused = true

func close():
    visible = false
    get_tree().paused = false

func _on_resume_pressed():
    pause_menu.close()

func _on_quit_pressed():
    get_tree().quit()


