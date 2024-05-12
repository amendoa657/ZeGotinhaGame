extends KinematicBody2D

var spd = 200
func _process(delta):
	move_and_slide(Vector2(1,0)*spd)
	


func _on_Area2D_body_entered(body):
	if body.is_in_group("danavel"):
		body.damage()
		self.queue_free()
	pass # Replace with function body.
