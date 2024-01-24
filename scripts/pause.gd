extends Control

var paused = false setget set_paused
var options = preload("res://cenas/optionspause.tscn")
var process_verify = true
var reset=false

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		self.paused = !paused

func set_paused(value):
	$Control/voltaraojogo.grab_focus()
	paused = value
	get_tree().paused = paused
	visible = paused
#	$Control/voltaraojogo.grab_focus()
#	$Node2D.visible=false
	
func _on_Button_pressed():
	self.paused = false
		
func _on_Button2_pressed():
	self.paused = false
	get_tree().change_scene("res://cenas/MainMenu.tscn")

func _on_quit_pressed():
	get_tree().quit()


	
func _process(delta: float) -> void:
	pass

	

func _on_voltaraojogo_pressed():
	self.paused=false
	pass # Replace with function body.


func _on_opcoes_pressed():
	$OptionsNode.visible=true
	pass # Replace with function body.


func _on_iraomenu_pressed():
	paused=false
	get_tree().change_scene("res://cenas/MainMenu.tscn")
	pass # Replace with function body.


func _on_sair_pressed():
	get_tree().quit()
	pass # Replace with function body.
