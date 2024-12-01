extends Label

func _process(delta: float) -> void:
	var keycount = str(Global.keycount)
	text = keycount
