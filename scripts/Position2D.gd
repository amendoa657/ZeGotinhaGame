extends Position2D

var nuvem = preload("res://cenas/nuvemfoda.tscn")
var covid = preload("res://cenas/CoronaVirus.tscn")
var tamanho = rand_range(0.8,1.1)
#func _on_corona_timeout():
#	var cy = rand_range(-80, 170)
#	var c = covid.instance()
#	c.global_position = Vector2(260, cy)
#	self.add_child(c)
	
func _on_Timer_timeout():
	tamanho = rand_range(0.8,1.1)
	var ny = rand_range(-5, 290)
	var n = nuvem.instance()
	n.global_position = Vector2(280, ny)
	n.scale = Vector2(tamanho,tamanho)
	self.add_child(n)

