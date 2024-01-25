extends Node2D

var spawn_location : Vector2 = Vector2.ZERO
var left_right_decider : float = 0.0

var minimum_x : float = 0.0
var minimum_y : float = 0.0
var maximum_x : float = 0.0
var maximum_y : float = 0.0

@onready var enemy_node = preload("res://Scenes/enemy.tscn")

func _on_enemy_maker_timeout():
	create_enemy()

func generate_random_location():
	var rng = RandomNumberGenerator.new()
	left_right_decider = rng.randf_range(0, 100)
	if left_right_decider < 50:
		minimum_x = -320
		maximum_x = -64
		minimum_y = 0
		maximum_y = 704
	else:
		minimum_x = 420
		maximum_x = 640
		minimum_y = 0
		maximum_y = 704
	var random_x_location = rng.randf_range(minimum_x, maximum_x)
	var random_y_location = rng.randf_range(minimum_y, maximum_y)
	spawn_location.x = random_x_location
	spawn_location.y = random_y_location

func create_enemy():
	generate_random_location()
	var enemy_to_spawn = enemy_node.instantiate()
	get_parent().add_child(enemy_to_spawn)
	enemy_to_spawn.position = spawn_location
