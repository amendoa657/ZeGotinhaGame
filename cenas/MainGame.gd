extends Node2D

onready var transition = get_node("Transicaofoda/Fill")
onready var animation = get_node("Transicaofoda/Fill/AnimationOut")
var particle = preload("res://cenas/particle.tscn")
export (float, 2.0) var duration = 1.5
var multiply = true
var first = true

func _ready():
	animation.play("out_anim")
	animation.playback_speed = duration
	

func _process(delta: float) -> void:
	if ($multiply.time_now==20) and (first==true):
		$Position2D/Dengue.start()
		first=false
	print("2")
	if ($Sprite/AnimationPlayer.playback_speed<=7.0):
		multiply=false
	$GUI/Control/ProgressBar.value=$ZeGota.vida

func _on_multiply_timeout() -> void:
	$Sprite/AnimationPlayer.playback_speed+=0.005


func _on_Button_pressed() -> void:
		$ZeGota.vida-=10
