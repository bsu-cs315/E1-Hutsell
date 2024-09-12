extends RigidBody2D

@export var strength : float = 500



func _process(delta):
	if Input.is_action_just_pressed("launch"):
		#apply_impulse(Vector2(1000 , -1000))
		var direction = Vector2(1, -1)
		var velocity = direction * strength
		apply_impulse(Vector2.ZERO, velocity)
		
		
