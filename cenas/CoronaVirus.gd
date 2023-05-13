extends KinematicBody2D

var player_ref = null
var dir
var exitdir
var speed = 80
var primeiro=true
func _on_Area2D_body_exited(body):
	if body.name=="ZeGota" and (primeiro==true):
		exitdir = self.global_position.direction_to(player_ref.global_position)
		player_ref=null
		primeiro=false

func _process(delta):
	
	if (!is_instance_valid(player_ref)):
		rotate(-0.05)
		move_and_slide(Vector2(-speed,0))

	if is_instance_valid(player_ref):
		dir = self.global_position.direction_to(player_ref.global_position)
		look_at(ZeGota.global_position)
		if (primeiro==true):
			$CollisionShape2D.disabled=false
			move_and_slide(dir*speed)
	if (primeiro==false):
		move_and_slide(exitdir*speed)
		$CollisionShape2D.disabled=true

func _on_Area2D_body_entered(body):
	if body.name=="ZeGota" and (primeiro==true):
		player_ref=body

