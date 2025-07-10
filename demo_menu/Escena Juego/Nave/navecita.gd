extends CharacterBody2D

@export var velocidad_salto = -170
@export var gravedad = 11
var puedeVolar = true

func _physics_process(_delta):
	#Habilita a la navecita a flotar
	if not is_on_floor():
		velocity.y += gravedad
	#Activa la animacion
	$AnimatedSprite2D.play("avanzar")
	#Hace que salte con el click izquierdo
	if Input.is_action_pressed("click"):
		velocity.y = velocidad_salto
	move_and_slide()

func gameOver():
	puedeVolar = false
	get_parent().get_child(5).queue_free()
	velocidad_salto = 0 
	get_tree().change_scene_to_file("res://Escenas menu/Esc-MenuInicio/escena menu.tscn")
	
