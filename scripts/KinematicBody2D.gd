extends KinematicBody2D

var spd=100
var body_ref = null
func _process(delta):
	if Input.is_action_pressed("ui_down"):
		move_and_slide(Vector2(0,1)*spd)
	if Input.is_action_pressed("ui_up"):
		move_and_slide(Vector2(0,-1)*spd)
	if Input.is_action_pressed("ui_left"):
		move_and_slide(Vector2(-1,0)*spd)
	if Input.is_action_pressed("ui_right"):
		move_and_slide(Vector2(1,0)*spd)
	if Input.is_action_just_pressed("ui_accept") and is_instance_valid(body_ref):
		body_ref.queue_free()



func _on_Area2D_enemy_entered(body):
	body_ref = body
