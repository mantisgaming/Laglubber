extends MovementController

@export
var delay: int = 60

var wait: int = 0;

var sequence: Array[MovementAction] = []

func add_action(action: MovementAction) -> void:
	sequence.push_back(action);

func _physics_process(_delta: float) -> void:
	if wait < delay:
		wait += 1
		return
	do_action(sequence.pop_front())
