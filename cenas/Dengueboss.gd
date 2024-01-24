extends KinematicBody2D

onready var atack1 = preload("res://cenas/Dengueboss_atack1.tscn")

func sine_wave(time, period, amplitude, midpoint):
	return sin(time * 2 * PI / period) * amplitude + midpoint



func _process(delta):
	move_and_slide(Vector2(0,sine_wave(delta / 1000, 1, 64, 0)))
	

func _on_Timer_timeout():
	var a1 = atack1.instance()
	get_node("/root").add_child(a1)
	a1.global_position = $MosquitoDaDengue.global_position
	
	
