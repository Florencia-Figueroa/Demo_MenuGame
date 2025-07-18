extends Camera2D

#Exportamos la variable para ajustar la velocidad en la que se mueve el mouse directamente desde el editor:
@export var velocidadMouse: float = 1

#Esta función _process se va a ejecutar en cada fotograma
func _process(delta) -> void:
	#Guarda en una variable las cordenadas el mouse (segun la ventana) a cordenadas segun el juego
	#ya que es donde se va a mover el mouse (dentro del juego y no por fuera de la ventana)
	var mousePosicionJuego: Vector2 = get_viewport().get_mouse_position()

	#Combino la posicion actual del mouse con la deseada para generar ese efecto de suavizado
	position = position.lerp(mousePosicionJuego, velocidadMouse * delta)
