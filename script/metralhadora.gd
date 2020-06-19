extends Node2D

var pretiro = preload("res://cenas/tiro.tscn")
var vel=300
var intervalo=.15
var ultimo_disparo=0
func _ready():
	game.connect("end_game",self,"on_end_game")
	set_process(true)
	pass

func _process(delta):
	var d=0
	var e=0
	
	if Input.is_action_pressed("direita"):
	    d=1
		
	if Input.is_action_pressed("esquerda"):
		e=-1
	if get_position().x>650:
	    d=0
		
	if get_position().x<153:
		e=0	
	set_position(get_position() + Vector2(1,0)*delta*vel*(e+d))
	
	#disparo
	if Input.is_action_pressed("tiro"):
	  if ultimo_disparo<=0:
			 disparo(get_node("canhaopos"))
			 ultimo_disparo=intervalo
	if ultimo_disparo>0:
		ultimo_disparo-=delta        																	        				
	pass 
func disparo(node):
		 var tiro = pretiro.instance()	
		 tiro.set_global_position(node.get_global_position())	
		 get_owner().add_child(tiro)
		 pass
func on_end_game():
	queue_free()
