extends Control

const loading_scene_path = "res://Scenes/LoadingScene/load_scene.tscn"


#This is how you add keyboard/game pad selection
func _ready():
	$VBoxContainer/StartButton.grab_focus()


func _on_start_button_pressed():
	get_tree().change_scene_to_file(loading_scene_path)


func _on_load_button_pressed():
	pass # Replace with function body.


func _on_settings_button_pressed():
	pass # Replace with function body.


func _on_about_button_pressed():
	pass # Replace with function body.


func _on_quit_button_pressed():
	get_tree().quit()
