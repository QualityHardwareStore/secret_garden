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



func _on_cam_3_body_entered(body: CharacterBody3D) -> void:
	var tween = create_tween()
	tween.tween_property(camera, "position", Vector3(1, 3, -18.5), 1)
	print("camera 3 active")


func _on_cam_4_body_entered(body: CharacterBody3D) -> void:
	var tween = create_tween()
	tween.tween_property(camera, "position", Vector3(-6.5, 2, -21.5), 1)
	print("camera 4 active")


func _on_cam_5_body_entered(body: CharacterBody3D) -> void:
	var tween = create_tween()
	tween.tween_property(camera, "position", Vector3(1, 4.5, -27), 1)
	print("camera 5 active")


func _on_cam_6_body_entered(body: CharacterBody3D) -> void:
	var tween = create_tween()
	tween.tween_property(camera, "position", Vector3(7, 5, -36.5), 1)
	print("camera 6 active")


func _on_cam_7_body_entered(body: CharacterBody3D) -> void:
	var tween = create_tween()
	tween.tween_property(camera, "position", Vector3(5.5, -3, -5), 1)
	print("camera 7 active")
