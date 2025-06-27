extends State

var _direction:Vector2
var g = Globals

func enter() -> void:
	parent.move_component.set_speed(g.MovementType.RUN)

func process_input(_event: InputEvent) -> void:
	if !parent.input_component.get_run_input():
		state_return(&"Walk")


func process_frame(_delta: float) -> void:
	parent.animation_component.handle_move_animation(_direction)


func process_physics(_delta: float) -> void:
	_direction = parent.input_component.get_direction_input()
	
	if _direction == Vector2.ZERO:
		state_return(&"Idle")
	
	parent.move_component.handle_movement(parent, _direction)
	
