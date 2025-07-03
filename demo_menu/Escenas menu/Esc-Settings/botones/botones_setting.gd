extends Control

#Funcion del boton volver escena opciones:
func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-MenuInicio/escena menu.tscn")
