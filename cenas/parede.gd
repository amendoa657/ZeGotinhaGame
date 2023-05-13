extends StaticBody2D

func _on_Area2D_body_entered(body):
	if body.name=="ZeGota":
		$CollisionShape2D.disabled=false
	else:
		$CollisionShape2D.disabled=true
