extends KinematicBody2D

var speed = 100

func _process(delta: float) -> void:
		move_and_slide(Vector2(0,-1)*speed)
		speed=speed*1.01


func _on_Area2D_body_entered(body: Node) -> void:
	if body.is_in_group("zegota"):
		body.damage()
		$Particles2D.emitting=true
		self.queue_free()
