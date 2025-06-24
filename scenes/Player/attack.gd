extends State
#left click for attack
func process_frame(_delta: float) -> void:
	parent.animation_component.attack_animation()







func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == &"attack_up" or &"attack_down" or &"attack_left" or &"attack_right":
		state_return(&"Idle")
