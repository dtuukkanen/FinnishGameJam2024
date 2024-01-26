extends Node2D

var matrix_size_x = 5  # Your desired matrix size x
var matrix_size_y = 8 # Your desired matrix size x

func _ready():
	for i in range(matrix_size_x):
		for j in range(matrix_size_y):
			var chair = Sprite2D.new()
			chair.texture = preload("res://Assets/chair.png")
			var width = chair.texture.get_width()
			var height = chair.texture.get_height()
			chair.position = Vector2(i * width + width / 2, j * height + height / 2)
			add_child(chair)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
