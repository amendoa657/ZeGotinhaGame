extends Node2D

func _ready():
	$Control/MainButtons/comecar.grab_focus()
	$Control.modulate=0
	$TelaDeFundo.modulate=0
	$NoBgPeanutLogo.modulate=0
func _on_comecar_pressed():
	get_tree().change_scene("res://cenas/MainGame.tscn")
	pass # Replace with function body.


func _on_opcoes_pressed():
	$Control/Options.visible=true
	pass # Replace with function body.


func _on_sair_pressed():
	get_tree().quit()
	pass # Replace with function body.

func _on_Options_hide():
	$Control/MainButtons/comecar.grab_focus()
	
	pass # Replace with function body.
