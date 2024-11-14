extends CharacterBody2D


const SPEED = 100.0
const DECELERATION = 8

func _physics_process(delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var left_right = Input.get_axis("left", "right")
	var up_down = Input.get_axis("up", "down")
	
	
	# Handle horizontal movement
	if left_right != 0:
		velocity.x = left_right * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, (SPEED*DECELERATION) * delta)  # Decelerate towards 0
	
	# Handle vertical movement
	if up_down != 0:
		velocity.y = up_down * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, (SPEED*DECELERATION) * delta)  # Decelerate towards 0
	
	# Apply movement
	move_and_slide()
