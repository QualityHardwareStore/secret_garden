extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false
	Global.real.connect(_on_real)
	Global.spirit.connect(_on_spirit)


func _on_real():
	visible = false


func _on_spirit():
	visible = true
