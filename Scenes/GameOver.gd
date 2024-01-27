extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var button = Button.new()
	button.text = "Click me"
	button.pressed.connect(self._button_pressed)
	add_child(button)
	pass # Replace with function body.

func _button_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
