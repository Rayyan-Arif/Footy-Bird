extends CanvasLayer

@onready var show_score: Label = $Control/showScore
@onready var game_over_sound: AudioStreamPlayer = $GameOverSound

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	game_over_sound.play()
	show_score.text = "Your Score: " + str(Global.score)
	Global.score = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
