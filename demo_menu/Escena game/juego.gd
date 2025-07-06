extends Node2D
var musicaFondo = preload("res://Mareux - The Perfect Girl (Audio).mp3")
@onready var menuPausa = $PanelMenu

func cambiarSonido(unSonido):
	Audio.stream = unSonido
	Audio.play()

func _ready():
	cambiarSonido(musicaFondo)
	menuPausa.hide()

func _input(event):
	if event.is_action_pressed("Pausa"):
		menuPausa.show()
		
