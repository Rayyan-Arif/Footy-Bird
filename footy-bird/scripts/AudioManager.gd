extends Node

@onready var buttonClickSound = preload("res://assets/audios/buttonClickSound.wav")
@onready var successSound = preload("res://assets/audios/successSound.wav")
#@onready var backgroundSound = preload("res://assets/audios/backgroundWind.wav")

func button_click() -> void:
	var button = AudioStreamPlayer.new()
	add_child(button)
	button.stream = buttonClickSound
	button.play()
	button.finished.connect(button.queue_free)
	
func ball_passed_pipe() -> void:
	var pipe = AudioStreamPlayer.new()
	add_child(pipe)
	pipe.stream = successSound
	pipe.play()
	pipe.finished.connect(pipe.queue_free)
