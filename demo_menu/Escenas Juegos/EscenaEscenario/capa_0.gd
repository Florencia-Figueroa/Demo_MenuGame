extends ParallaxBackground

@export var max_offset_x: float = 200.0 # Máximo desplazamiento horizontal permitido
@export var max_offset_y: float = 100.0 # Máximo desplazamiento vertical permitido
@export var smooth_speed: float = 5.0 # Velocidad de suavizado del movimiento

var target_offset: Vector2 = Vector2.ZERO
var current_offset: Vector2 = Vector2.ZERO

func _ready():
	# Asegúrate de que el ratón esté visible si lo necesitas, o invisible si es solo para parallax
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED) # O Input.MOUSE_MODE_VISIBLE si quieres ver el cursor

func _input(event):
	if event is InputEventMouseMotion:
		# Obtener la posición del mouse en coordenadas de la ventana
		var mouse_pos = get_viewport().get_mouse_position()
		var viewport_size = get_viewport().get_visible_rect().size

		# Normalizar la posición del mouse a un rango de -1 a 1
		# Esto nos da un valor que va de -1 (izquierda/arriba) a 1 (derecha/abajo)
		var normalized_x = (mouse_pos.x / viewport_size.x) * 2.0 - 1.0
		var normalized_y = (mouse_pos.y / viewport_size.y) * 2.0 - 1.0

		# Calcular el offset deseado basado en la posición normalizada del mouse
		target_offset.x = normalized_x * max_offset_x
		target_offset.y = normalized_y * max_offset_y

func _process(delta):
	# Suavizar el movimiento del ParallaxBackground hacia el target_offset
	current_offset = current_offset.lerp(target_offset, delta * smooth_speed)
	scroll_offset = current_offset # Establece el offset del ParallaxBackground
