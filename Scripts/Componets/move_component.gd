class_name MovementComponent
extends Node

@export_group("Setting")
@export var speed: float = 200

func handle_movement(body: CharacterBody2D, direction: Vector2) -> void:
	body.velocity = direction * speed
