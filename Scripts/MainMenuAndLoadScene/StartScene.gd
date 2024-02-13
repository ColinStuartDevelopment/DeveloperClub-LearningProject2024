extends Control

const loading_scene_path = "res://Scenes/LoadingScene/load_scene.tscn"
@onready var margin_container = $MarginContainer
@onready var scene_list_container = $SceneContainer

@onready var scene_focus = $SceneContainer/VBoxContainer/LoadingSceneButton
@onready var load_focus = $VBoxContainer/LoadButton

const SPLASH_WORLD = "res://Scenes/2D-FirstScene/splash_world.tscn"
const CARD_WORLD = "res://Scenes/CardWorld/card_world.tscn"
const FIGHT_WORLD = "res://Scenes/FightWorld/fight_world.tscn"

#This is how you add keyboard/game pad selection
func _ready():
	$VBoxContainer/StartButton.grab_focus()
	margin_container.visible = false
	scene_list_container.visible = false

func _on_start_button_pressed():
	get_tree().change_scene_to_file(loading_scene_path)

func _on_load_button_pressed():
	if scene_list_container.visible:
		scene_list_container.visible = false
	elif !scene_list_container.visible:
		scene_list_container.visible = true
		margin_container.visible = false
		scene_focus.grab_focus()

func _on_settings_button_pressed():
	if margin_container.visible:
		margin_container.visible = false
	elif !margin_container.visible:
		margin_container.visible = true
		scene_list_container.visible = false

func _on_about_button_pressed():
	pass # Replace with function body.

func _on_quit_button_pressed():
	get_tree().quit()

func _on_go_back_button_pressed():
	scene_list_container.visible = false
	load_focus.grab_focus()

#List of SceneLoads
func _on_fighting_scene_button_pressed():
	get_tree().change_scene_to_file(FIGHT_WORLD)
func _on_card_world_button_pressed():
	get_tree().change_scene_to_file(CARD_WORLD)
func _on_d_first_scene_button_pressed():
	get_tree().change_scene_to_file(SPLASH_WORLD)
func _on_loading_scene_button_pressed():
	get_tree().change_scene_to_file(loading_scene_path)
