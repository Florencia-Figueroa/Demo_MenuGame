extends Control

#Funcion boton exit:
func _on_exit_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-Exit/escena exit.tscn")

#Funcion boton settings:
func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-Settings/escena setting.tscn")

#Funcion boton nuevo juego:
func _on_iniciar_juego_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-IniciarJuego/escena iniciar juego.tscn")
