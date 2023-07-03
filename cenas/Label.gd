extends Label
var time_now = 0
func _process(delta: float) -> void:
	text = str(time_now)


func _on_Timer_timeout() -> void:
	time_now +=1
