extends KinematicBody2D
export var speed = 80
func _process(delta):
	move_and_slide(Vector2(-1,0)*speed)
	pass
