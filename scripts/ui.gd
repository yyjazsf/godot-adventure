extends Control

func _on_start_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")
