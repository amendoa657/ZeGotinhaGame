extends Node2D


func _on_CheckBox_toggled(button_pressed):
	OS.set_window_fullscreen(button_pressed)


func _on_Voltar_pressed():
	$AnimationPlayer.play("FadeOut")
	visible=false
	pass # Replace with function body.



func _on_Control_draw():
	$AnimationPlayer.play("FadeIn")
	$Control/Voltar.grab_focus()
	pass # Replace with function body.

