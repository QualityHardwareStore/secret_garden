extends Node3D

@onready var camera : Node3D = $camRoot


func _on_cam_1_body_entered(body: CharacterBody3D) -> void:
	
	var tween = get_tree().create_tween()
	tween.tween_property(camera, "position", Vector3(0, 0, 0), 1)
	
	print("camera 1 active")


func _on_cam_2_body_entered(body: CharacterBody3D) -> void:
	var tween = create_tween()
	tween.tween_property(camera, "position", Vector3(0, 0, -11), 1)
	print("camera 2 active")
