extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#size is a vector object and /2 means divide size.x / 2 and size.y/2
	#pivot_offset is also vector object and default is (0,0) so setting origin to center of body
	pivot_offset = size / 2

func _on_button_down() -> void:
	AudioManager.button_click()
	scale = Vector2(0.8, 0.8)
	if name == "playAgain" or name == "play":
		Global.game_over = false
		get_tree().change_scene_to_file("res://scenes/game.tscn")
	elif name == "exit":
		get_tree().change_scene_to_file("res://scenes/menu_screen.tscn")

func _on_button_up() -> void:
	scale = Vector2(1, 1)
