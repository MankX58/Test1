extends Node2D
var  centro = Vector2(0,0)
var puntaje_jugador = 0
var puntaje_maquina = 0
func _on_wall_right_body_entered(body):
	puntaje_jugador += 1
	$Playerscore.text = str(puntaje_jugador)
	$pelota.position = centro
func _on_wall_left_2_body_entered(body):
	puntaje_maquina += 1
	$Computerscore.text = str(puntaje_maquina)
	$pelota.position = centro
	$pelota.call("set_ball_velocity")

