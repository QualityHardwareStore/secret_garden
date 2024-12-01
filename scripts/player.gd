extends CharacterBody3D

@export var speed = 4
const JUMP_VELOCITY = 10

@export var camera : Node3D

var target_velocity = Vector3.ZERO

signal is_running
signal is_not_running

var walkloop

func _ready() -> void:
	pass


func _physics_process(delta):
	var direction = Vector3.ZERO
	
	if not is_on_floor():
		target_velocity += get_gravity() * delta
		
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		target_velocity.y = JUMP_VELOCITY
		print("yump")
	#this is jumping bullshit
	
	
	#controls
	if Input.is_action_pressed("right"):
		direction.x += 1
	if Input.is_action_pressed("left"):
		direction.x -= 1
	if Input.is_action_pressed("down"):
		direction.z += 1
	if Input.is_action_pressed("up"):
		direction.z -= 1
	
	
	direction = -(direction.rotated(Vector3.UP, camera.rotation.y).normalized())
	#controls relate to camera position
	
	#animation
	if direction != Vector3.ZERO:
		direction = direction.normalized()
		$pivot.basis = Basis.looking_at(direction) #was direction
		is_running.emit()
	else:
		is_not_running.emit()
	
	
	target_velocity.x = direction.x * speed
	target_velocity.z = direction.z * speed
	#this is how movement happens
	
	velocity = target_velocity
	move_and_slide()
	
	print(Global.keycount)
	
	if position.y < -10:
		await get_tree().create_timer(1.0).timeout
		position = Vector3(0,1,0)
		
		#add code here to respawn
	
	
	


func _on_is_not_running() -> void:
	walkloop = false
	$walknoise.stop()


func _on_is_running() -> void:
	if walkloop == false:
		$walknoise.play()
		walkloop = true
