extends RigidBody2D

@export var strength : float = 500


#func _process(_delta):
#	if Input.is_action_just_pressed("launch"):
#		var direction = Vector2(1, -1)
#		var velocity = direction * strength
#		apply_impulse(Vector2.ZERO, velocity)
		
		
func _physics_process(_delta):
	if Input.is_action_just_pressed("launch"):
		var direction = Vector2(1, -1).normalized()
		var velocity = direction * strength
		print("Velocity: ", velocity)
		linear_velocity = velocity
		
		#apply_impulse(Vector2(10, 10), velocity)
