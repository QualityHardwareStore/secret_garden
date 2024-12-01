extends Node3D

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("spirit_toggle"):
		$AudioStreamPlayer.play()
