extends Area2D

@export var speed : int = 100
@onready var animation_player : AnimationPlayer = $AnimationPlayer
@onready var sprite_2d : Sprite2D = $Sprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var input_vector : Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")

	if input_vector == Vector2.ZERO:
		animation_player.play("Idle")
	else:
		animation_player.play("Walk")

		# Flip the sprite when moving left or right
		if input_vector.x != 0:
		#	sprite_2d.scale.x = sign(input_vector.x)
			sprite_2d.flip_h = input_vector.x < 0

		# The following code is equivalent to the above code
		# if input_vector.x < 0:
		# 	sprite_2d.flip_h = true
		# elif input_vector.x > 0:
		# 	sprite_2d.flip_h = false

	# Move the player
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
