extends Sprite2D

func _input(event):
	var parent_node = get_parent()
	var max_bounds = Vector2(parent_node.matrix_size_x, parent_node.matrix_size_y) * 32

	if !event.is_pressed():
		return

	var movement = Vector2()
	if event.is_action("ui_up"):
		movement += Vector2(0, -32)
	elif event.is_action("ui_down"):
		movement += Vector2(0, 32)
	elif event.is_action("ui_left"):
		movement += Vector2(-32, 0)
	elif event.is_action("ui_right"):
		movement += Vector2(32, 0)

	# Calculate new position
	var new_position = position + movement

	# Manually clamp each component of the Vector2
	new_position.x = clamp(new_position.x, 0, max_bounds.x - texture.get_width())
	new_position.y = clamp(new_position.y, 0, max_bounds.y - texture.get_height())

	# Update position
	position = new_position

var health = 100

func take_damage(amount_of_damage):
	health -= amount_of_damage

	if health <= 0:
		# Player is dead
		get_tree().change_scene_to_file("res://scenes/GameOver.tscn")

func set_health(new_health):
	health = new_health

# Called when the node enters the scene tree for the first time.
func _ready():
	set_health(100)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#take_damage(1)
	pass
