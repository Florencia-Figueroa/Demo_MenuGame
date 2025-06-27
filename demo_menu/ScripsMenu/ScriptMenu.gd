extends Control


#Funcion boton nuevo juego:
func _on_bnuevo_juego_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas Juegos/EscenaNuevoJuego/escena_nuevo_juego.tscn")

#Funcion boton continuar partida:
func _on_bcontinuar_partida_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas Juegos/EscenaContinuarJuego/escena_continuar_juego.tscn")

#Funcion boton exit:
func _on_bexit_pressed() -> void:
	get_tree().quit()


#Funcion boton settings
func _on_bsettings_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas Juegos/EscenasSettings/escena_settings.tscn")
