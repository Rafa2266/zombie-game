extends Node

var pre_zombie=preload("res://cenas/zombie.tscn")
var intervalo=3
var time=10
var matime=time
var mats=2
var mets=1
func _ready():
	set_process(true)
	pass

func _process(delta):
	if time>=0:
	   time-=delta
	else:
	  if mats>1.2:
	    mats-=.1
	  if mets>0.8:
	    mets-=.1
	  time=matime
	if intervalo>0:
	  intervalo-=delta    
	else:
	  intervalo=rand_range(mets,mats)
	  var zombie=pre_zombie.instance()
	  zombie.set_position(Vector2(rand_range(220,580),-200))
	  get_owner().add_child(zombie)
