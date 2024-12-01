extends Node3D

var spiritvision = false

func _ready() -> void:
	spiritvision = false
	$SubViewportContainer/ui/win.visible = false
	$SubViewportContainer/ui/win2.visible = false
	$SubViewportContainer/ui/yap.visible = false
	$"SubViewportContainer/ui/press e to see".visible = false
	$ambience.play()


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("spirit_toggle"):
		if spiritvision == false and Global.spiritrock == true:
			Global.spirit.emit()
			spiritvision = true
			$spiritbell.play()
		elif spiritvision == true and Global.spiritrock == true:
			Global.real.emit()
			spiritvision = false
			$spiritbell2.play()

func _process(delta: float) -> void:
	if Global.keycount == 3:
		$SubViewportContainer/ui/win.visible = true
		await get_tree().create_timer(1.0).timeout
		$SubViewportContainer/ui/win2.visible = true
		await get_tree().create_timer(3.0).timeout
		$SubViewportContainer/ui/yap.visible = true
		await get_tree().create_timer(6.0).timeout
		
	
