extends State

func process_physics(_delta: float) -> void:
	var direction: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	if direction == Vector2.ZERO:
		state_return(&"Idle")
	
	if direction.x > 0.1:
		set_animation(&"HorizontalWalk")
		parent.flip_player(false)
	elif direction.x < -0.1:
		set_animation(&"HorizontalWalk")
		parent.flip_player(true)
	elif direction.y < -0.1:
		set_animation(&"UpWalk")
		parent.flip_player(false)
	elif direction.y > 0.1:
		set_animation(&"DownWalk")
		parent.flip_player(false)
	
	parent.move(direction)

func set_animation(animation: StringName) -> void:
	animation_player.play(animation)
