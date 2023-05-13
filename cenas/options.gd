extends Node2D



func _on_CheckBox_toggled(button_pressed):
	OS.set_window_fullscreen(button_pressed)


func _on_Voltar_pressed():
	get_tree().change_scene("res://cenas/MainMenu.tscn")


func _on_OptionButton_item_selected(index):
#	get_tree().set_screen_stretch(base_window_size)
	pass
	
func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://cenas/MainMenu.tscn")

