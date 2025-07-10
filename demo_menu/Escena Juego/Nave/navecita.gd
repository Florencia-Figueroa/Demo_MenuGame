extends CharacterBody2D


@export var velocidad_salto = -170
@export var gravedad = 11
var puedeVolar = true

#Se encarga de que caiga, salte y se mueva, reaccionando a su entorno.
func _physics_process(_delta):
	#Habilita a la navecita a flotar, el metodo es propio del nodo.
	if not is_on_floor():
		#Acelera hacia abajo, por lo que simula la caida por gravedad.
		velocity.y += gravedad
	#Activa la animacion
	$AnimatedSprite2D.play("avanzar")
	#Hace que salte con el click izquierdo, verificando previamente 
	#si se ejecuta "click", que definimos en el input map
	if Input.is_action_pressed("click"):
		#Establece la velocidad a el valor inicial, simulando darle un impulso instantáneo hacia arriba.
		velocity.y = velocidad_salto
	#es una caracteristica del nodo, permite a la nave moverse, saber la velocity y detectar una colisión. 
	move_and_slide()

#Al colisionar con algo, termina el juego.
func gameOver():
	puedeVolar = false
	#get_parent accede al nodo padre, get_child(7) accede al nodo hijo que queremos seleccionar
	#call_deferred("queue_free") evita que se rompa el ciclo interno dentro del _physics_process.
	get_parent().get_child(6).call_deferred("queue_free")
	velocidad_salto = 0 
	#cambia de escena considerando lo explicado anteriormente.
	get_tree().call_deferred("change_scene_to_file", "res://Escenas menu/Esc-MenuInicio/escena menu.tscn")
