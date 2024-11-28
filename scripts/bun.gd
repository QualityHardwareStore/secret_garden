extends Node3D

@onready var anim = $AnimationPlayer


func _on_player_is_not_running() -> void:
	anim.play("idle")


func _on_player_is_running() -> void:
	anim.play("walk")
