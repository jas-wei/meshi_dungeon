extends Area2D

var player_in_area = false


func _on_body_entered(body: Node2D) -> void:
	player_in_area = true


func _on_body_exited(body: Node2D) -> void:
	player_in_area = false

# Called when the node enters the scene tree for the first time.
func _process(delta: float) -> void:
	if player_in_area and Input.is_key_pressed(KEY_E):
		get_tree().change_scene_to_file("res://scenes/meat_minigame.tscn")
