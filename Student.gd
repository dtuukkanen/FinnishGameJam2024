extends Sprite2D

func _input(event):
	if !event.is_pressed():
		return
	if event.is_action("ui_up"):
		position += Vector2(0, -32)
	elif event.is_action("ui_down"):
		position += Vector2(0, 32)
	elif event.is_action("ui_left"):
		position += Vector2(-32, 0)
	elif event.is_action("ui_right"):
		position += Vector2(32, 0)
		
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
