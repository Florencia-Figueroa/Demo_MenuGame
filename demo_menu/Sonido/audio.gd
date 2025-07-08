extends AudioStreamPlayer

var musica = preload("res://End of Line (From TRON_ LegacyScore).mp3")

func _ready():
	Audio.stream = musica 
	Audio.play()
