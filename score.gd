extends AnimatedSprite2D

var score: int = 0
@onready var label : Label = $score

func add_score(amount:int):
	score += amount
	update_label()
	play("SCORE")

func subtract_score(amount:int):
	score = max(0, score - amount)
	update_label()

func update_label():
	label.text = "score: %d" % score
