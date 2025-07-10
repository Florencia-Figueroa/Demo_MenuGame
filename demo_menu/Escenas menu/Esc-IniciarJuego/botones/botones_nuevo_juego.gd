extends Control


#Funcion para que al presionar nueva partida, te mande a la escena de seleccion de dificultades:
func _on_bnueva_partida_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-Dificultad/escena dificultad.tscn")

#Funcion para que al presionar continuar partida, te mande a la escena del juego:
func _on_bcontinuar_partida_pressed() -> void:
	get_tree().change_scene_to_file("res://Escena Juego/Nivel/juego.tscn")

#Funcion para que al presionar volver, te mande a la escena del menu principal:
func _on_bvolver_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-MenuInicio/escena menu.tscn")
