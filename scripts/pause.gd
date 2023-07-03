extends Control

var paused = false setget set_paused
var options = preload("res://cenas/optionspause.tscn")
var process_verify = true

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		self.paused = !paused

func set_paused(value):
	paused = value
	get_tree().paused = paused
	visible = paused
	$CenterContainer/VBoxContainer/resume.grab_focus()
	$Node2D.visible=false
	
func _on_Button_pressed():
	self.paused = false
		
func _on_Button2_pressed():
	self.paused = false
	get_tree().change_scene("res://cenas/MainMenu.tscn")

func _on_quit_pressed():
	get_tree().quit()

func _on_options_pressed() -> void:
	$Node2D.on_options=true
	$Node2D.visible=true
	$Node2D/Control/TabContainer/Control/Voltar.grab_focus()
	process_verify=true
	
func _process(delta: float) -> void:
	if ($Node2D.on_options == false) and (process_verify==true):
		$CenterContainer/VBoxContainer/resume.grab_focus()
		process_verify=false
