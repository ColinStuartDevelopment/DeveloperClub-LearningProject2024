extends CharacterBody2D

@export var speed : float = 80.0
@export var player : Node2D
@export var health : float = 3.0
@export var score_value : float = 12.0
@export var damage_given : float = 1.0

@onready var nav_agent := $NavigationAgent2D

func _ready():
	player = get_parent().find_child("Player")

func _physics_process(delta):
	var dir = to_local(nav_agent.get_next_path_position()).normalized()
	velocity = dir * speed
	move_and_slide()

func makepath():
	nav_agent.target_position = player.global_position

func _on_timer_timeout():
	makepath()

func take_damage(damage):
	health = health - damage
	if health <= 0:
		death()

func death():
	get_parent().player_score += score_value
	get_parent().update_text()
	queue_free()
