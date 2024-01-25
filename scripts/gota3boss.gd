extends KinematicBody2D

var speed = 200

func _process(delta: float) -> void:
		move_and_slide(Vector2(-1,0)*speed)
		speed=speed*1.01


func _on_Area2D_body_entered(body: Node) -> void:
	if body.is_in_group("zegota"):
		body.damage()
		self.queue_free()
