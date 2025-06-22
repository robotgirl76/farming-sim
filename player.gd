class_name Player extends CharacterBody2D

@export var speed: float = 300.0;

@onready var state_machine: StateMachine = $StateMachine
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	state_machine.init(self, animation_player)

func _unhandled_input(event: InputEvent) -> void:
	state_machine.process_input(event)

func _process(delta: float) -> void:
	state_machine.process_frame(delta)

func _physics_process(delta: float) -> void:
	state_machine.process_physics(delta)
	move_and_slide()

func flip_player(is_flipped: bool) -> void:
	animated_sprite.flip_h = is_flipped

func move(direction: Vector2) -> void:
	velocity = direction * speed
