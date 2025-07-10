extends Node2D


#Puntos de spawn para los obstaculos
@onready var spawn = $spawn  #-> punto de creacion
@onready var r1 = $r1        #-> punto mas alto
@onready var r2 = $r2        #-> punto mas bajo

#Carga la escena del obstaculo.
@onready var obstaculo = preload("res://Escena Juego/Obstaculos/obstaculos.tscn")

#Cuando el timer termina, spawnea un set de obstaculos:
func _on_timer_timeout():
	#Accede a la variable de la escena navecita.
	if $Navecita.puedeVolar: 
		#crear y almacena una copia del obstaculo dentro de objeto.
		var objeto = obstaculo.instantiate()
		#La posicion global de objeto pasa a ser la misma que la del spawn.
		objeto.global_position.x = spawn.global_position.x
		#Elige una posible altura para los obstaculos aleatoriamente dentro del rango de r1 y r2.
		objeto.global_position.y = randi_range(r1.global_position.y, r2.global_position.y)
		#Añade al objeto al juego, haciendolo visible y funcional.
		add_child(objeto)

#Despawnea los obstaculos
func _on_limite_body_entered(body: Node2D):
	#Por seguridad y buenas practicas, agregamos un call_deferred() y metimos el queue_free dentro.
	body.call_deferred("queue_free")
