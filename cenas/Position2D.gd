extends Position2D

var covid = preload("res://cenas/CoronaVirus.tscn")
var tamanho = rand_range(0.8,1.1)
func _on_corona_timeout():
	var cy = rand_range(-5, 290)
	var c = covid.instance()
	c.global_position = Vector2(600, cy)
	self.add_child(c)
