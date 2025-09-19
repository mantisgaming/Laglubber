extends Node

signal on_new_action(action: MovementAction)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:
	var action = MovementAction.new(Input.get_vector("move_left", "move_right", "move_up", "move_down"));
	on_new_action.emit(action)
