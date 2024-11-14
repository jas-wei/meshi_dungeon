extends Sprite2D

# Speed factor for smooth movement
@export var follow_speed: float = 0.4

func _ready() -> void:
	# Calculate the center of the viewport
	var center_position = get_viewport_rect().size / 2

	# Move the mouse to the center of the viewport
	Input.warp_mouse(center_position)

func _process(delta: float) -> void:
	# Smoothly move towards the mouse position
	position = position.lerp(get_global_mouse_position(), follow_speed)
