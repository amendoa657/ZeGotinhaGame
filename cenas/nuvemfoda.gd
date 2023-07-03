extends KinematicBody2D

var tamanho
var speed = rand_range(-1.0, -3.0)

func _on_Timer_timeout():
	tamanho = rand_range(0.8,1.1)
	speed = rand_range(-1.0, -3.0)
	print(speed)
	
func _process(delta):
	translate(Vector2(speed,0))
