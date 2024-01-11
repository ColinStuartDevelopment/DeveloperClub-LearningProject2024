extends CharacterBody2D

@export var speed : float = 80.0
@export var player : Node2D
@export var health : float = 3.0

@onready var nav_agent := $NavigationAgent2D


func _physics_process(delta):
	var dir = to_local(nav_agent.get_next_path_position()).normalized()
	velocity = dir * speed
	move_and_slide()

func makepath():
	nav_agent.target_position = player.global_position

func _on_timer_timeout():
	makepath()

#func take_damage(damage):
#	print("taking damage")
#	health = health - damage
#	print(health)
