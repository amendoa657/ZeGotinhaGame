extends Node2D

onready var transition = get_node("Transicaofoda/Fill")
onready var animation = get_node("Transicaofoda/Fill/AnimationOut")
onready var end = get_node("Transicaofoda")
export (float, 2.0) var duration = 1.5

func _ready():
	animation.play("out_anim")
	animation.playback_speed = duration

