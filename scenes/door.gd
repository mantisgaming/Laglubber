extends Sprite2D

@onready var collider: CollisionShape2D = $StaticBody2D/CollisionShape2D

func _on_area_2d_pressed(_body: Node) -> void:
	collider.set_deferred("disabled", true)
	hide()


func _on_area_2d_released(_body: Node) -> void:
	collider.set_deferred("disabled", false)
	show()
