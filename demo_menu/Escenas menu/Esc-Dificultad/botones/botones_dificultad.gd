extends Control


#Funcion de boton volver:



func _on_b_volver_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-MenuInicio/escena menu.tscn")



func _on_b_facil_pressed() -> void:
	get_tree().change_scene_to_file("res://Escena game/juego.tscn")
	
func _on_b_intermedio_pressed() -> void:
	get_tree().change_scene_to_file("res://Escena game/juego.tscn")

func _on_b_dificil_pressed() -> void:
	get_tree().change_scene_to_file("res://Escena game/juego.tscn")
