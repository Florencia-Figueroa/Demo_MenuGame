extends Control

#Funcion del boton "volver" escena opciones:
func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-MenuInicio/escena menu.tscn")

#Funcion para controlar el bus de audio:
func volumen(bus_index, value):
	AudioServer.set_bus_volume_db(bus_index, value)

#Funcion para regular el sonido mediante el slider:
func _on_h_slider_value_changed(value):
	var db = linear_to_db(value)
	volumen(0, db)
