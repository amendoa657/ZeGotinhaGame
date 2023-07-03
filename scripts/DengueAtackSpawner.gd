extends Position2D

var dengue_atack = preload("res://cenas/Dengue_atack.tscn")

func _on_Timer_timeout() -> void:
	var a = dengue_atack.instance()
	a.global_position = self.global_position
