extends RigidBody2D

@export var strength : float = 500 
var max_strength : float = 1000 
var min_strength : float = 100   

@onready var power_label = $PowerLabel  


func _physics_process(_delta):
	if Input.is_action_pressed("up"):
		strength += 10
		if strength > max_strength:
			strength = max_strength
	elif Input.is_action_pressed("down"):
		strength -= 10
		if strength < min_strength:
			strength = min_strength
	

	if Input.is_action_just_pressed("launch"):
		var direction = Vector2(1, -1).normalized()
		var velocity = direction * strength
		print("Launching with strength: ", strength)
		linear_velocity = velocity
	

		
