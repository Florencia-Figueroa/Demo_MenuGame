extends CharacterBody2D

#Define la velocidad con la que se mueve al spawnear
var velocidad = 10

#Permite que se mueva atravez de la pantalla
func _process(_delta):
	#Le resta para que se mueva hacia el eje 0.
	velocity.x -= velocidad
	move_and_slide()

#Causa que al colisionar con un cuerpo, pierda el juego. 
func colision(body):
	if body.name== "Navecita":
		body.gameOver()

#Causa que pierda el juego al chocar la nave contra un obstaculo 
func _on_area_2d_body_entered(body: Node2D) -> void:
	colision(body)

#Causa que pierda el juego al chocar la nave contra un obstaculo 
func _on_area_2d_2_body_entered(body: Node2D) -> void:
	colision(body)
