extends Label

@export var player : CharacterBody2D
@export var pipe_hbx : Area2D
var score : int

func _ready() -> void:
	pipe_hbx.area_entered.connect(add)

func add() -> void:
	score += 1
	text = "Score : "+str(score)
