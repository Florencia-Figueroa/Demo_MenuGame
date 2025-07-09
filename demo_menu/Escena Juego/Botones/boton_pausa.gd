extends Control

#Funcion para activar el panel de pausa
func _physics_process(delta):
	if Input.is_action_just_pressed("Pausa"):
		get_tree().paused = not get_tree().paused 
		$".".visible = not $".".visible


#Funcion del boton salir, el cual te lleva al menu principal:
func _on_salir_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Escenas menu/Esc-MenuInicio/escena menu.tscn")


#Funcion del boton continuar para seguir con el juego donde se dejo:
func _on_continuar_pressed() -> void:
	get_tree().paused = false
	$".".visible = not $".".visible
