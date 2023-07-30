extends Position2D

var dengue_atack = preload("res://cenas/Dengue_atack.tscn")
var denv = preload("res://cenas/denv.tscn")
var dengue = preload("res://cenas/Dengue.tscn")
var player_ref = null
var wait = true
var dengueataque

func _on_corona_timeout():
	var cy = player_ref.global_position.y
	var c = denv.instance()
	c.global_position = Vector2(600, cy)
	self.add_child(c)

func _on_Dengue_timeout() -> void:
#	randomize()
#	var dy = choose_randomly([-40, 40])
	var dy = rand_range(-70, 70)
	var d = dengue.instance()
	d.global_position = Vector2(600, player_ref.global_position.y-dy)
	self.add_child(d)

func _on_Area2D_body_entered(body: Node) -> void:
	if (body.name=="ZeGota"):
		player_ref=body

func choose_randomly(list_of_entries):
	 return list_of_entries[randi() % list_of_entries.size()]

func _on_multiply_timeout() -> void:
	if (wait==true) and (get_parent().first==false):
		$Dengue.wait_time-=0.005
		$Corona.wait_time-=0.005
	
func _process(delta: float) -> void:
	if ($Dengue.wait_time<=0.8) or ($Corona.wait_time<=0.8):
		wait=false

