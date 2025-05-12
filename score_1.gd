extends RichTextLabel

func _ready():
	if FrontalLobeScript.pacific == 1:
		FrontalLobeScript.pacific += 1
		set_text(str(FrontalLobeScript.score))

		if FrontalLobeScript.score1 < FrontalLobeScript.score2:
			FrontalLobeScript.score1 = FrontalLobeScript.score3 
		if FrontalLobeScript.score1 < FrontalLobeScript.score3:
			FrontalLobeScript.score1 = FrontalLobeScript.score4 
		if FrontalLobeScript.score1 < FrontalLobeScript.score4:
			FrontalLobeScript.score1 = FrontalLobeScript.score5 
		if FrontalLobeScript.score1 < FrontalLobeScript.score5:
			FrontalLobeScript.score1 = FrontalLobeScript.score6
		if FrontalLobeScript.score1 < FrontalLobeScript.score6:
			FrontalLobeScript.score1 = FrontalLobeScript.score7
		if FrontalLobeScript.score1 < FrontalLobeScript.score7:
			FrontalLobeScript.score1 = FrontalLobeScript.score8
		if FrontalLobeScript.score1 < FrontalLobeScript.score8:
			FrontalLobeScript.score1 = FrontalLobeScript.score9
		if FrontalLobeScript.score1 < FrontalLobeScript.score9:
			FrontalLobeScript.score1 = FrontalLobeScript.score10
		if FrontalLobeScript.score1 < FrontalLobeScript.score10:
			queue_free()
			 
			
