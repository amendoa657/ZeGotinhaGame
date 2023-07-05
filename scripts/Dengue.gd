extends KinematicBody2D
var player_ref = null
export var spd = 100
var dir
var dengue_atack = preload("res://cenas/Dengue_atack.tscn")
var randtime = rand_range(0.5, 1.5)
var repetir = true

func _ready() -> void:
	randtime = rand_range(0.5, 1.5)
	$Timer.wait_time=randtime
	
func _process(delta: float) -> void:
	if is_instance_valid(player_ref):
		move_and_slide(dir*spd)
	if (self.global_position.x <= -50):
		self.queue_free()

func _on_Area2D_body_entered(body: Node) -> void:
		if (body.name=="ZeGota"):
			player_ref=body
			dir = self.global_position.direction_to(player_ref.global_position)

func _on_Timer_timeout() -> void:
	if (repetir==true):
		var a = dengue_atack.instance()
		get_node("/root").add_child(a)
		a.global_position = self.global_position
		repetir=false


func _on_Damage_body_entered(body: Node) -> void:
	if body.is_in_group("zegota"):
		body.damage()
	pass # Replace with function body.
