extends KinematicBody2D

var player_ref = null
var dir
var exitdir
var speed=80
var initial_speed=130
var primeiro=true
var wait=true
var vida=30
var delay = false

func _on_Area2D_body_exited(body):
	if body.name=="ZeGota" and (primeiro==true):
		exitdir = self.global_position.direction_to(player_ref.global_position)
		player_ref=null
		primeiro=false

func _process(delta):
	if (!is_instance_valid(player_ref)):
		rotate(-0.05)
		move_and_slide(Vector2(-initial_speed,0))
	if is_instance_valid(player_ref):
		dir = self.global_position.direction_to(player_ref.global_position)
		look_at(ZeGota.global_position)
		if (primeiro==true):
			$CollisionShape2D.disabled=false
			move_and_slide(dir*speed)
	if (primeiro==false):
		move_and_slide(exitdir*speed)
		$CollisionShape2D.disabled=true
	if (speed>=110):
		wait=false
	if global_position.x<=-700 or global_position.y<=-900 or global_position.y>=900:
		queue_free()
	if vida<=0:
		queue_free()

func _on_Area2D_body_entered(body):
	if body.name=="ZeGota" and (primeiro==true):
		player_ref=body

func _on_Damage_body_entered(body: Node) -> void:
	if body.is_in_group("zegota") and primeiro==true:
		body.damage()
		exitdir = self.global_position.direction_to(player_ref.global_position)
		primeiro=false


func _on_multiply_timeout():
	if (wait==true) and (get_parent().first==false):
		speed+=0.1
		
func damage():
		vida-=10
		$hurt.play()


func _on_Denvdamage_timeout():
	delay=false
	pass # Replace with function body.
