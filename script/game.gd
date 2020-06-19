extends Node

const GRUPO_INIMIGO="inimigo"
var lifejg=10 setget setlj

signal life_changed
signal end_game

func _ready():
	randomize()
	pass

func get_camera():
   return get_tree().get_root().get_node("main").get_node("camera")
   pass
func setlj(valor):
	 if valor>=0:
	   lifejg=valor
	   emit_signal("life_changed")
	 if valor==0:
	    emit_signal("end_game")
	   
