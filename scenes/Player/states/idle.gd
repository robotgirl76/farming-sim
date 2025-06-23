class_name PlayerIdle
extends State

func process_input(_event: InputEvent) -> void:
	if parent.input_component.get_direction_input() != Vector2.ZERO:
		state_return(&"Walk")

func process_frame(_delta: float) -> void:
	parent.animation_component.handle_move_animation(Vector2.ZERO)
