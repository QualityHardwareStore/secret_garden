extends Node3D

@export var cam_rotation : int

func _process(delta: float) -> void:
	rotation_degrees.y = cam_rotation
