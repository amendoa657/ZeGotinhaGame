extends Particles2D

var tempochuva = 0
var temporandom = rand_range(60, 80)

func _process(delta):
#	if Input.is_action_pressed("ui_select"):
#		emitting=true
#	else:
#		emitting=false
	if (tempochuva==60):
		emitting=true
		$Timer.start()
		

func _on_multiply_timeout():
	tempochuva+=1


func _on_Timer_timeout():
	emitting=false
	tempochuva=0
