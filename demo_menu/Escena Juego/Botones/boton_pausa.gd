extends Control

func _physics_process(delta):
	if Input.is_action_just_pressed("Pausa"):
		get_tree().paused = not get_tree().paused 
		$".".visible = not $".".visible

func _on_salir_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-MenuInicio/escena menu.tscn")

func _on_continuar_pressed() -> void:
	get_tree().paused = false
	$".".visible = not $".".visible
