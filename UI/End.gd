extends Control

onready var global = get_node("/root/Global")

func _ready():
	$Label.text = "Your level 1 score was: " + str(Global.level1_score) + "\nYour level 2 time was: " + str(Global.level2_time)

func _on_quit_pressed():
	get_tree().quit()

func _on_restart_pressed():
	Global.score = 0
	Global.time = Global.level1_default
	Global.level = 1
	Global.level1_score = 0
	Global.level2_time = 0 
	var _target = get_tree().change_scene("res://Game.tscn")
