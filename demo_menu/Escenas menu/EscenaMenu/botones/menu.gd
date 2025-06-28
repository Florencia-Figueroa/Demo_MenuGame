extends Control
#Funcion boton nuevo juego:
func _on_bnuevo_juego_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas Menu/EscenaNuevoJuego/escena nuevo juego.tscn")

#Funcion boton continuar partida:
func _on_bcontinuar_partida_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas Menu/EscenaContinuarJuego/escena continuar juego.tscn")

#Funcion boton exit:
func _on_bexit_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas Menu/EscenaExit/escena exit.tscn")


#Funcion boton settings
func _on_bsettings_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas Menu/EscenasSettings/escena settings.tscn")
