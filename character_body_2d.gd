extends CharacterBody2D

const GRAVITY = 900.0
const FLAP_STRENGTH = -300.0
const MAX_FALL_SPEED = 600.0
const FORWARD_SPEED = 150.0

var is_dead = false

func _ready():
	rotation = 0
	get_tree().paused = false
	

func _on_hit_obstacle():
	is_dead = true
	
	get_tree().paused = true

func _physics_process(delta):
	if is_dead:
		return
	
	velocity.x = FORWARD_SPEED
	velocity.y += GRAVITY * delta

	if velocity.y > MAX_FALL_SPEED:
		velocity.y = MAX_FALL_SPEED

	if Input.is_action_just_pressed("flap"):
		velocity.y = FLAP_STRENGTH
	
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		if collision:
			_on_hit_obstacle()

	move_and_slide()

	rotation = lerp_angle(rotation, deg_to_rad(clamp(velocity.y * 0.2, -30, 90)), 0.1)
