extends KinematicBody2D

export var spd=100
var body_ref = null
var vida = 100
var delay = false


func _process(delta):
	var move_input = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	).clamped(1) 
	move_and_slide(move_input * spd)
	if Input.is_action_just_pressed("ui_accept") and is_instance_valid(body_ref):
		body_ref.queue_free()
	if vida<=0:
		get_tree().reload_current_scene()


func _on_Area2D_enemy_entered(body):
	body_ref = body


func _on_Timer_timeout() -> void:
	delay=false
	$AnimationPlayer.stop()
	modulate.a8=255

func damage():
	if delay==false:
		vida-=10
		$Timer.start()
		delay=true
		$AnimationPlayer.play("damage")
		$hurt.play()
