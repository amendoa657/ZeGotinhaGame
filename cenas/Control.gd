extends Control
var options
var pintonegro = 0 
func _process(delta):
	match options:
		true:
			self.visible=false
		false:
			self.visible=true
	if (options==false and pintonegro==0):
		$VBoxContainer/Start.grab_focus()
		pintonegro+=1
	if options==true:
		pintonegro=0
	
