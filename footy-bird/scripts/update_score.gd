extends Area2D

func _on_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D and Global.game_over == false:
		Global.score += 1
		AudioManager.ball_passed_pipe()
		Global.score_label.text = str(Global.score)
