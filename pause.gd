extends Control

var pausado = false setget set_pausado

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		self.pausado = !pausado



func set_pausado(value):
	pausado = value
	get_tree().paused = pausado
	visible = pausado

func _on_Button_pressed():
	self.pausado = false
	
	
func _on_Button2_pressed():
	self.pausado = false
	get_tree().change_scene("res://cenas/MainMenu.tscn")
