extends Timer
var first = false
var time_now = 0

func _on_multiply_timeout() -> void:
	time_now+=1
	
func _process(delta):
	if Input.is_action_pressed("ui_home"):
		time_now+=1
	
