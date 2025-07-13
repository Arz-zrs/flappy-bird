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
	pipe_instance.set_name("pipe")
	pipe_instance.set_position(Vector2(1, randf()*200 - 100))
	add_child(pipe_instance)
	
	pass # Replace with function body.
