extends Control


#Funcion para activar el panel de pausa, el _ antes del delta aclara que no vamos a usar el parametro.
func _physics_process(_delta) -> void:
	#El input verifica si se ejecuto el "pausa", que definimos en el input map con la tecla P.
	if Input.is_action_just_pressed("Pausa"):
		#el paused es una propiedad booleana del scenetree.
		get_tree().paused = not get_tree().paused 
		#El menu de pausa esta inicialmente oculto, esto lo hace aparecer.
		$".".visible = not $".".visible


#Funcion del boton salir, el cual te lleva al menu principal:
func _on_salir_pressed() -> void:
	#provoca que al salir de la escena juego, el menu no siga "congelado".
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Escenas menu/Esc-MenuInicio/escena menu.tscn")


#Funcion del boton continuar para seguir con el juego donde se dejo:
func _on_continuar_pressed() -> void:
	#reanuda el juego.
	get_tree().paused = false
	#oculta el menu otra vez.
	$".".visible = not $".".visible
