extends Label

func _ready():
	game.connect("life_changed",self,"on_life_changed")
	pass
func on_life_changed():
 set_text(str(game.lifejg))

