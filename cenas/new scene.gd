extends Position2D

var bird = preload("res://cenas/Bird.tscn")
	
func _on_Timer_timeout():
	var by = rand_range(-190, 0)
	var b = bird.instance()
	b.global_position = Vector2(280, by)
	self.add_child(b)

