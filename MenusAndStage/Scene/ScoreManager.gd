extends Node

var score: int = 0
var base_score: int = 0

signal score_changed(new_score)

func add_hit_score():
	base_score += 50
	_update_total_score()

func multiply_score():
	base_score = int(base_score * 1.5)
	_update_total_score()

func reduce_score_on_hit():
	base_score = int(base_score / 2)
	_update_total_score()

func _update_total_score():
	score = base_score
	emit_signal("score_changed", score)

func get_score() -> int:
	return score
	print("Final score is: ", score)
