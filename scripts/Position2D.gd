extends Position2D

var nuvem = preload("res://cenas/nuvemfoda.tscn")
var tamanho = rand_range(0.8,1.1)
	
func _on_Timer_timeout():
	tamanho = rand_range(0.8,1.1)
	var ny = rand_range(-150, 190)
	var n = nuvem.instance()
	n.global_position = Vector2(300, ny)
	n.scale = Vector2(tamanho,tamanho)
	self.add_child(n)
