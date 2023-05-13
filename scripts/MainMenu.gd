extends Node2D
export (float, 2.0) var duration = 1.5
var finished

func _ready():
	ProjectSettings.set_setting("display/window/size/test_width", "1920")
	ProjectSettings.set_setting("display/window/size/test_height", "1080")
	$VBoxContainer/Start.grab_focus()
func _on_Start_pressed():
	$transition.visible=true
	$transition/ColorRect/AnimationPlayer.play("in_Anim")
	$transition/ColorRect/AnimationPlayer.playback_speed = duration

func _on_Exit_pressed():
	get_tree().quit()
	
func _on_CheckBox_toggled(button_pressed):
	OS.set_window_fullscreen(button_pressed)

func _on_Options_pressed():
	get_tree().change_scene("res://cenas/options.tscn")

func _on_AnimationPlayer_animation_finished(in_Anim):
	get_tree().change_scene("res://cenas/MainGame.tscn")
