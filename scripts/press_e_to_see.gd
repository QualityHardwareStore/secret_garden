extends Label

func _ready() -> void:
	visible = false

func _process(delta: float) -> void:
	if Global.spiritrock == true:
		visible = true
		await get_tree().create_timer(3.0).timeout
		queue_free()
