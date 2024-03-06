extends CharacterBody2D
var speed = 1000
func _physics_process(delta):
	velocity.y = 0
	if Input.is_action_pressed("w"):
		velocity.y = -1 * speed
	elif Input.is_action_pressed("s"):
		velocity.y = 1 * speed
	move_and_collide(velocity * delta)
