extends Position2D

var fireTime = false
var fire = preload("res://cenas/ZeGotaTiro.tscn")

func _process(delta):
	if Input.is_action_just_pressed("ui_fire") and fireTime==false:
		var f = fire.instance()
		get_node("/root").add_child(f)
		f.global_position=self.global_position
		fireTime=true
		$FireTime.start()

func _on_FireTime_timeout():
	fireTime=false
