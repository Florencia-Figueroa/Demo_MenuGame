extends Control

func _on_bnueva_partida_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-Dificultad/escena dificultad.tscn")


func _on_bcontinuar_partida_pressed() -> void:
	get_tree().change_scene_to_file("res://Escena game/juego.tscn")


func _on_bvolver_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-MenuInicio/escena menu.tscn")
