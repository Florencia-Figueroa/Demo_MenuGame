extends Control

#Funcion del boton "volver" escena opciones:
func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas menu/Esc-MenuInicio/escena menu.tscn")
	

#@onready var volumen_slider = $Panel/Panel/HSlider

#func _ready():
#	volumen_slider.value = AudioServer.get_bus_volume_db(AudioServer.get_bus_index("Sonido General"))
  

#func _on_h_slider_value_changed(value: float):
#	var bus_index = AudioServer.get_bus_index("Sonido General")
#	AudioServer.set_bus_volume_db(bus_index, value)


#Funcion para controlar el bus de audio:
func volumen(bus_index, value):
	AudioServer.set_bus_volume_db(bus_index, value)

#Funcion para regular el sonido mediante el slider:
func _on_h_slider_value_changed(value):
	volumen(0, value)
	
