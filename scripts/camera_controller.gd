#extends Node3D
#
#@export var cam_rotation : int
#
#func _process(delta: float) -> void:
	#rotation_degrees.y = cam_rotation

extends Node3D

@onready var camRoot : Vector3 = self.position
@onready var camYaw = $camYaw
@onready var camPitch = $camYaw/camPitch
@onready var camera = $camYaw/camPitch/Camera3D

var camVector : Vector3

var yaw : float = 0
var pitch : float = 0

var yaw_sensitivity : float = 0.15
var pitch_sensitivity : float = 0.15

var yaw_acceleration : float = 15
var pitch_acceleration : float = 15

var mouse_look = false

func _ready() -> void:
	pass

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("move_camera"):
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		mouse_look = true
	
	if event.is_action_released("move_camera"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		mouse_look = false
	
	if event is InputEventMouseMotion and mouse_look == true:
		yaw += -event.relative.x * yaw_sensitivity
		pitch += -event.relative.y * pitch_sensitivity
	
	if event.is_action_pressed("zoom_in"):
		camera.position += (camVector)/10
	
	if event.is_action_pressed("zoom_out"):
		camera.position -= (camVector)/10
	


func _physics_process(delta: float) -> void:
	camYaw.rotation_degrees.y = yaw
	camPitch.rotation_degrees.x = pitch
	
	camVector = (camRoot - camera.position)
	#print(camVector)
	#Global.forwardDirection = Vector2(position.x, position.z)
