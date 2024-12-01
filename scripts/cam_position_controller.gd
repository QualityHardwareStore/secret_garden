extends Node3D

@onready var camera : Node3D = $camRoot


func _ready() -> void:
	var tween = get_tree().create_tween()
	tween.tween_property(camera, "position", Vector3(0, 1, 0), 1)


func _on_cam_1_body_entered(body: CharacterBody3D) -> void:
	
	var tween = get_tree().create_tween()
	tween.tween_property(camera, "position", Vector3(0, 1, 0), 1)
	
	print("camera 1 active")


func _on_cam_2_body_entered(body: CharacterBody3D) -> void:
	var tween = create_tween()
	tween.tween_property(camera, "position", Vector3(0, 1, -8), 1)
	print("camera 2 active")
