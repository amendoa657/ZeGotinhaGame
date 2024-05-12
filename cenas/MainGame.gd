extends Node2D

onready var transition = get_node("Transicaofoda/Fill")
onready var animation = get_node("Transicaofoda/Fill/AnimationOut")
var dengueboss = preload("res://cenas/Dengueboss.tscn")
var particle = preload("res://cenas/particle.tscn")
export (float, 2.0) var duration = 1.5
var multiply = true
var first = true
var db = dengueboss.instance()

func _ready():
	$MusicPlayer.play()
	pass

func _process(delta):
	$GUI/Control/ZGvida.value = $ZeGota.vida
	if ($multiply.time_now==20) and (first==true):
		$Position2D/Dengue.start()
		first=false
	print("2")
	if ($Sprite/AnimationPlayer.playback_speed<=7.0):
		multiply=false
	if ($GUI/pause.reset==true):
		get_tree().reload_current_scene()
	

func _on_multiply_timeout() -> void:
	$Sprite/AnimationPlayer.playback_speed+=0.005


func _on_Button_pressed() -> void:
		$ZeGota.vida-=10


func _on_Timer_timeout():
	db = dengueboss.instance()
	db.global_position = Vector2(500,0)
	self.add_child(db)
	pass # Replace with function body.


func _on_MusicPlayer_finished():
	$MusicPlayer.play()
	pass # Replace with function body.
