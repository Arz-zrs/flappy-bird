extends Area2D

var score := 0

func _on_area_entered(area: Area2D) -> void:
	if(area.name == "hitbox_pipe"):
		score += 1
		$"../ui_layeer/score".text = "Score : "+ str(score)
	
	if(area.name == "pipe"):
		get_tree().quit()
