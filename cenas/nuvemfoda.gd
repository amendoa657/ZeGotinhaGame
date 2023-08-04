extends KinematicBody2D

var tamanho
var speed = rand_range(-1.0, -3.0)
var nuvemtext
func _ready():
	randomize()
	var anim = ['1','2','3']
	nuvemtext = anim[randi()%anim.size()]
func _on_Timer_timeout():
	$AnimatedSprite.set_animation("3")
	tamanho = rand_range(0.8,1.1)
	speed = rand_range(-1.0, -3.0)
	print(speed)
	
func _process(delta):
	$AnimatedSprite.set_animation(nuvemtext)
	translate(Vector2(speed,0))
