extends AudioStreamPlayer

var musica = preload("res://Sonido/End of Line (From TRON_ LegacyScore).mp3")

func _ready():
	Audio.stream = musica 
	Audio.play()
