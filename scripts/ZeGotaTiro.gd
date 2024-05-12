extends KinematicBody2D

var spd = 200
func _process(delta):
	move_and_slide(Vector2(1,0)*spd)
