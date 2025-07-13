extends Node2D

@onready var pipe = preload("res://scenes/pipe.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	var pipe_instance = pipe.instantiate()
	#var hbox = pipe_instance.get_node("hitbox_pipe")
	pipe_instance.set_name("pipe")
	pipe_instance.set_position(Vector2(1, randf()*200 - 100))
	#hbox.area_entered.connect(add)
	add_child(pipe_instance)
	
	pass # Replace with function body.

#func add(area:Area2D) -> void:
	#if(area.name == "hitbox_pipe"):
		#$ui_layeer/score.score += 1
		#$ui_layeer/score.text = "Score : "+str($ui_layeer/score.score)
