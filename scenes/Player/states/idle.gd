extends State

func enter() -> void:
	animation_name = &"Idle"
	super()

func process_input(_event: InputEvent) -> void:
	if check_movement():
		state_return(&"Walk")

func check_movement() -> bool:
	var movement: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	return true if movement != Vector2.ZERO else false
