extends Control


#Funcion del boton "volver" escena opciones:
func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-MenuInicio/escena menu.tscn")

#Funcion para controlar el bus de audio:
func volumen(bus_index, value) -> void:
	#El audio server controla todos lo sonidos del juego y el set db establece un valor en decibelios.
	AudioServer.set_bus_volume_db(bus_index, value)

#Funcion para regular el sonido mediante el slider:
func _on_h_slider_value_changed(value) -> void:
	#variable que convierte el valor lineal que le pasamos a decibelios.
	var db = linear_to_db(value)
	#El cero se refiere al master.
	volumen(0, db)
