extends KinematicBody2D

var dir
var exitdir
var speed = 80
var primeiro=true

func _process(delta):
	if (primeiro==true):
		dir = self.global_position.direction_to(ZeGota.global_position)
		move_and_slide(dir*speed)
	look_at(ZeGota.global_position)

#ADICIONAR VARIACAO ONDE O VIRUS SEMPRE SEGUE O PERSONAGEM E DEIXA DE SEGUIR DEPOIS DE UM TIMEOUT


func _on_Timer_timeout():
	primeiro=false
	exitdir = self.global_position.direction_to(ZeGota.global_position)
	$CollisionShape2D.disabled=true
	if (primeiro==false):
		move_and_slide(exitdir*speed)




#extends KinematicBody2D
#
#var player_ref = null
#var dir
#var exitdir
#var speed = 80
#var primeiro=true
#
#func _on_Area2D_body_exited(body):
#	if body.name=="ZeGota" and (primeiro==true):
#		exitdir = self.global_position.direction_to(player_ref.global_position)
#		player_ref=null
#		primeiro=false
#
#func _process(delta):
#
#	if (!is_instance_valid(player_ref)):
#		move_and_slide(Vector2(-speed,0))
#
#	if is_instance_valid(player_ref):
#		dir = self.global_position.direction_to(player_ref.global_position)
#		look_at(ZeGota.global_position)
#		if (primeiro==true):
#			move_and_slide(dir*speed)
#	if (primeiro==false):
#		move_and_slide(exitdir*speed)
#
#func _on_Area2D_body_entered(body):
#	if body.name=="ZeGota" and (primeiro==true):
#		player_ref=body
