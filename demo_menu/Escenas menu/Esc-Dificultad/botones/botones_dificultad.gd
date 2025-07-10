extends Control


#Funcion de boton volver:
func _on_b_volver_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-MenuInicio/escena menu.tscn")

#Funcion para que al presionar facil, te mande a la escena del juego:
func _on_b_facil_pressed() -> void:
	get_tree().change_scene_to_file("res://Escena Juego/Nivel/juego.tscn")
	
