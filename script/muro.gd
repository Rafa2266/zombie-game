extends Area2D

var dano=1

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
func _on_muro_area_entered(area):
	game.lifejg-=dano
	if(game.lifejg==0):
	   get_node("animamuro").play("destruir muro")
	if area.is_in_group(game.GRUPO_INIMIGO):
	  area.get_node("animazombie").play("perde vida")
	  game.get_camera().shake()
	  
	pass 


