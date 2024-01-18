extends Control

const loading_scene_path = "res://Scenes/LoadingScene/load_scene.tscn"

func _on_load_button_pressed() -> void:
	get_tree().change_scene_to_file(loading_scene_path)

