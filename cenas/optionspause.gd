extends Node2D

onready var transition = get_node("Transicao/Fill")
onready var animation = get_node("Transicao/Fill/AnimationOut")
export (float, 2.0) var duration = 1.5
var on_options
func _ready() -> void:
	animation.play("out_anim")
	animation.playback_speed = duration

func _on_CheckBox_toggled(button_pressed):
	OS.set_window_fullscreen(button_pressed)

func _on_Voltar_pressed():
	visible=false
	on_options=false
	

func _on_OptionButton_item_selected(index):
#	get_tree().set_screen_stretch(base_window_size)
	pass
	
func _process(delta):
	print(on_options)
