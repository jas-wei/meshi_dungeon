extends Area2D

var order = [0, 1, 2, -1]  # Expected order of shapes
var mouse_held = false      # Track if the mouse button is held down
var visited_shapes = []     # Track shapes that have been processed

func _ready() -> void:
	print(order)
	visited_shapes.clear()  # Ensure `visited_shapes` is empty at the start

# Track if the mouse button is being pressed
func _process(delta):
	mouse_held = Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT)

# Function to handle input events while the mouse is held down
func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if mouse_held and shape_idx not in visited_shapes:
		if shape_idx == 0 and order[0] == 0:
			print("Entered 0!")
			order.remove_at(0)
			visited_shapes.append(shape_idx)  # Mark shape 0 as visited
			print(order)
		elif shape_idx == 1 and order[0] == 1:
			print("Entered 1!")
			order.remove_at(0)
			visited_shapes.append(shape_idx)  # Mark shape 1 as visited
			print(order)
		elif shape_idx == 2 and order[0] == 2:
			print("Entered 2!")
			order.remove_at(0)
			visited_shapes.append(shape_idx)  # Mark shape 2 as visited
			print(order)
			get_tree().change_scene_to_file("res://scenes/main_game.tscn")
		else:
			print("Failed!")
			get_tree().change_scene_to_file("res://scenes/main_game.tscn")  # Reload the scene on failure
