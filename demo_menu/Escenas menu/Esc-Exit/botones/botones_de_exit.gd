extends Control

func _on_volver_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-MenuInicio/escena menu.tscn")

func _on_salir_pressed() -> void:
	get_tree().quit()
