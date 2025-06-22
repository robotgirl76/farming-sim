class_name State extends Node

# Player
var parent: Player
var animation_player: AnimationPlayer
var animation_name: StringName = &""

# State Machine
var sm: StateMachine

func _set_params(_state_machine: StateMachine, _parent: CharacterBody2D, _animation_player: AnimationPlayer) -> void:
	sm = _state_machine
	parent = _parent
	animation_player = _animation_player

func enter() -> void:
	if animation_player:
		animation_player.play(animation_name)

func exit() -> void:
	pass

func process_input(_event: InputEvent) -> void:
	pass

func process_frame(_delta: float) -> void:
	pass

func process_physics(_delta: float) -> void:
	pass

func state_return(state_name:StringName) -> void:
	for state in sm.get_state_list:
		if state.name == state_name:
			sm.change_state(state)
			break
