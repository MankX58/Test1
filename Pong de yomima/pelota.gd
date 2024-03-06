extends CharacterBody2D
var speed = 650
func _ready():
	if randi() % 2 == 0:
		velocity.x = 1
	else:
		velocity.x = -1
		
	if randi() % 2 == 0:
		velocity.y = 1
	else:
		velocity.y = -1
	velocity *= speed
func _physics_process(delta):
	var colision = move_and_collide(velocity * delta)
	if colision:
		velocity = velocity.bounce(colision.get_normal())
func set_ball_velocity():
	if randi() % 2 == 0:
		velocity.x = 1 * 500
	else:
		velocity.x = -1 * 500
		
	if randi() % 2 == 0:
		velocity.y = 1 * 500
	else:
		velocity.y = -1 * 500
		
