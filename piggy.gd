extends Area2D

@export var speed : int = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var input_vector : Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	position += input_vector * speed * delta

	# The following code is equivalent to the above code
	# if Input.is_action_pressed("move_right"):
	# 	position.x += speed * delta
	# if Input.is_action_pressed("move_left"):
	# 	position.x -= speed * delta
	# if Input.is_action_pressed("move_down"):
	# 	position.y += speed * delta
	# if Input.is_action_pressed("move_up"):
	# 	position.y -= speed * delta
