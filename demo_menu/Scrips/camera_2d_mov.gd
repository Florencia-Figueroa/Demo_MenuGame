extends Camera2D

#Para ajustar la velocidad en la que se mueve el mouse
@export var velocidadMouse: float = 1

func _process(delta):
	#Guardo en una variable las cordenadas el mouse (segun la ventana) a cordenadas segun el juego
	#ya que es donde se va a mover el mouse (dentro del juego y no por fuera de la ventana)
	var mousePosicionJuego: Vector2 = get_viewport().get_mouse_position()

	#Convino la posicion actual del mouse con la deseada para generar ese efecto de suavizado
	position = position.lerp(mousePosicionJuego, velocidadMouse * delta)
