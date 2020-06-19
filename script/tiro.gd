extends Area2D

var vel = 700

func _ready():
    set_process(true)
    get_node("animationtiro").play("tiro")
    pass
	
func _process(delta):
	set_position(get_position() + Vector2(0,-1) *vel * delta)
	if get_position().y<-30:
	   queue_free()
	pass


func _on_tiro_area_entered(area):
	if area.is_in_group(game.GRUPO_INIMIGO) and get_position().y<490:
	  area.da_dano(1)
	  queue_free()
	  if area.has_method("diminui_velocidade"):
	    area.diminui_velocidade(40,.4)
	pass 
