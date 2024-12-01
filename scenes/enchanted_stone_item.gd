extends Node3D


func _ready() -> void:
	$AnimationPlayer.play("spin_002")


func _on_area_3d_body_entered(body: CharacterBody3D) -> void:
	visible = false
	Global.spiritrock = true
	$AudioStreamPlayer.play()
	await get_tree().create_timer(1.0).timeout
	queue_free()
