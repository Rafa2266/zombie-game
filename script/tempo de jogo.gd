extends Label

var tempo=0

func _ready():
	
	pass

func _process(delta):
 if(game.lifejg>0):
  tempo+=delta
  set_text(str(tempo))
