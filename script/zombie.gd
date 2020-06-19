extends Area2D

var vel=100
var inter_vel=0
var intervalo=.30
var velnormal=vel
var vida= 6
func _ready():
	add_to_group(game.GRUPO_INIMIGO)
	randomize()
	set_process(true)
	pass

func _process(delta):
	 if vel!=velnormal and inter_vel>=0:
	   inter_vel-=delta
	 if inter_vel<=0 and vel!=velnormal:
	   vel=velnormal
	   get_node("animazombie").play("parada")
	 set_position(get_position()+Vector2(0,1)*vel*delta)
	
	 if get_position().y>500:
	    if(game.lifejg!=0):
	      vel=0
	      velnormal=0
	 if get_position().y>900:
	   queue_free() 
func da_dano(valor):
	   if vida>0:
	    vida-=valor
	    get_node("animazombie").play("hit")
	   if vida<=0:
	     remove_from_group(game.GRUPO_INIMIGO)
	     vel=0
	     velnormal=0
	     get_node("animazombie").play("dead")
	   pass
func diminui_velocidade(valor,tempo):
	      if vida>1 and vel>0:
	       vel=valor
	       inter_vel=tempo   
	      pass
