extends Node
class_name MovementController

@export
var move_speed: float = 200

func do_action(action : MovementAction) -> void:
	var character = (get_parent() as CharacterBody2D)
	character.velocity = action.velocity * move_speed
	character.move_and_slide()
