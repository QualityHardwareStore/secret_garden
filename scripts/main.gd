extends Node3D

var spiritvision = false

func _ready() -> void:
	spiritvision = false


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("spirit_toggle"):
		if spiritvision == false:
			Global.spirit.emit()
			spiritvision = true
			$spiritbell.play()
		elif spiritvision == true:
			Global.real.emit()
			spiritvision = false
			$spiritbell2.play()
