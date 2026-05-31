extends Node2D

@onready var background: Node2D = $Background
@onready var background_2: Node2D = $Background2

var pipePair = preload("res://scenes/pipe_pair.tscn")
var pipes = []
var viewportWidth = 0
var ranges = [3, 2, 4, 1.7, 2.2]
@onready var score_label: Label = $score/scoreLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	viewportWidth = get_viewport_rect().size.x
	Global.score_label = score_label
	
	for i in range(5):
		var pipe = pipePair.instantiate()
		pipe.position = Vector2(viewportWidth + i * 270, get_viewport_rect().size.y/ranges[i])
		pipe.scale = Vector2(0.5, 0.5)
		add_child(pipe)
		pipes.append(pipe)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for i in range(5):
		var body = pipes[i].get_node("Area2D").get_node("CollisionShape2D")
		pipes[i].position.x -= 200 * delta 
		if pipes[i].position.x < -body.shape.size.x:
			pipes[i].position.x += background.get_node("background_image").texture.get_width()


func _on_floor_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
