extends ParallaxBackground

@export var max_offset_x: float = 200.0
@export var max_offset_y: float = 100.0
@export var smooth_speed: float = 5.0

var target_offset: Vector2 = Vector2.ZERO
var current_offset: Vector2 = Vector2.ZERO

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		var mouse_pos = get_viewport().get_mouse_position()
		var viewport_size = get_viewport().get_visible_rect().size
		var normalized_x = (mouse_pos.x / viewport_size.x) * 2.0 - 1.0
		var normalized_y = (mouse_pos.y / viewport_size.y) * 2.0 - 1.0
		target_offset.x = normalized_x * max_offset_x
		target_offset.y = normalized_y * max_offset_y

func _process(delta):
	current_offset = current_offset.lerp(target_offset, delta * smooth_speed)
	scroll_offset = current_offset
