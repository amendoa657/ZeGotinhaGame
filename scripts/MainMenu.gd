extends Node2D
export (float, 2.0) var duration = 1.5
var finished
onready var transition = get_node("Control/Transicao/Fill")
onready var animation = get_node("Control/Transicao/Fill/AnimationOut")
var options = preload("res://cenas/options.tscn")

func _ready():
	animation.play("out_anim")
	animation.playback_speed = duration
	ProjectSettings.set_setting("display/window/size/test_width", "1920")
	ProjectSettings.set_setting("display/window/size/test_height", "1080")
	$Control/VBoxContainer/Start.grab_focus()
	
func _on_Start_pressed():
	$Control/transition.visible=true
	$Control/transition/ColorRect/AnimationPlayer.play("in_Anim")
	$Control/transition/ColorRect/AnimationPlayer.playback_speed = duration

func _on_Exit_pressed():
	get_tree().quit()
	
func _on_CheckBox_toggled(button_pressed):
	OS.set_window_fullscreen(button_pressed)

func _on_Options_pressed():
	$Control.visible=false
	var o = options.instance()
	o.global_position = Vector2(-45, -50)
	self.add_child(o)

func _on_AnimationPlayer_animation_finished(in_Anim):
	get_tree().change_scene("res://cenas/MainGame.tscn")
