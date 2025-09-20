extends Area2D

signal pressed(body: Node)
signal released(body: Node)

var _pressed = false

func _ready():
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _on_body_entered(body):
	if body is CharacterBody2D and not _pressed:
		_pressed = true
		pressed.emit(body)

func _on_body_exited(body):
	if body is CharacterBody2D and _pressed:
		await get_tree().process_frame
		if get_overlapping_bodies().filter(func(b): return b is CharacterBody2D).is_empty():
			_pressed = false
			released.emit(body)
