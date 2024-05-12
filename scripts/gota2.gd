extends KinematicBody2D

var speed = 100

func _process(delta: float) -> void:
		move_and_slide(Vector2(0,-1)*speed)
		speed=speed*1.01
		if global_position.x<=-700 or global_position.y<=-900 or global_position.y>=900:
			queue_free()

func _on_Area2D_body_entered(body: Node) -> void:
	if body.is_in_group("zegota"):
		$Particles2D.emitting=true
		$Particles2D.get_parent().get_parent().add_child(self)
		body.damage()
		self.queue_free()
