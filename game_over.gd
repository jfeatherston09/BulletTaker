extends CanvasLayer

@onready var score_label: Label = $scoreLabel
@onready var main_menu_button = $MainMenuButton

func _ready():
	score_label.text = "Score: %d" % GlobalState.final_score
	print("Loaded score on GameOver screen: ", GlobalState.final_score)

	main_menu_button.pressed.connect(_on_main_menu_pressed)

func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://MenusAndStage/Scene/Main_Menu_Scene.tscn")
