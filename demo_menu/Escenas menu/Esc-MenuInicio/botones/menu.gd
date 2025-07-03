extends Control

#Funcion boton exit:
func _on_bexit_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-Exit/escena exit.tscn")

#Funcion boton settings:
func _on_bsettings_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-Settings/escena setting.tscn")

#Funcion boton nuevo juego:
func _on_bnuevo_juego_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-NuevoJuego/escena nuevo juego.tscn")
