extends Sprite2D

@onready var background_image: Sprite2D = $"."
var viewportWidth = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	viewportWidth = get_viewport_rect().size.x
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	background_image.position.x -= delta * 200
	
	if background_image.position.x < -background_image.texture.get_width() + viewportWidth / 2:
		background_image.position.x += background_image.texture.get_width()
	pass
