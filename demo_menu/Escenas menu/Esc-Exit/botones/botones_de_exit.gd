extends Control


#Funcion para que al presionar volver, te mande a la escena del menu inicial:
func _on_volver_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-MenuInicio/escena menu.tscn")

#Funcion para que al presionar salir, te saque del juego:
func _on_salir_pressed() -> void:
	get_tree().quit()
