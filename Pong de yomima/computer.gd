extends CharacterBody2D
var velocidad = 470
var pelota
func _ready():
	pelota = get_parent().get_node("pelota")	
func _physics_process(delta):
	if abs(pelota.position.y - position.y) <30:
		return 
	
	if pelota.position.y < position.y:
		velocity.y = -1
	else: velocity.y = 1
	velocity *= velocidad 
	move_and_collide(velocity * delta)
