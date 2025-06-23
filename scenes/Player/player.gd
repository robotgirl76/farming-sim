class_name Player extends CharacterBody2D

@onready var state_machine: StateMachine = $StateMachine

#region Components
@onready var input_component: InputComponent = %InputComponent
@onready var move_component: MovementComponent = %MovementComponent
@onready var animation_component: AnimationComponent = %AnimationComponent
#endregion Componets

func _ready() -> void:
	state_machine.init(self)

func _unhandled_input(event: InputEvent) -> void:
	state_machine.process_input(event)

func _process(delta: float) -> void:
	state_machine.process_frame(delta)

func _physics_process(delta: float) -> void:
	state_machine.process_physics(delta)
	move_and_slide()
