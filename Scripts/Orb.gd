extends CharacterBody2D

@export var speed : float = 400
@export var damage :  float = 1.0
var target = Vector2.ZERO

@onready var explosion_one = preload("res://Scenes/Particles/explosion_one.tscn")
@onready var explosion_two = preload("res://Scenes/Particles/explosion_two.tscn")
var hit_enemy : bool = false


func _ready():
	assign_target()

func _physics_process(delta):
	var direction = global_position.direction_to(target)
	decide_distance()
	velocity = direction * speed
	move_and_slide()

func decide_distance():
	var distance = global_position.distance_to(target)
	if distance < 5.0:
		if speed > 10.0:
			speed = speed / 2
		if distance < 1.0:
			arrived_at_target()

func assign_target():
	target = get_global_mouse_position()


func _on_enemy_detection_body_entered(body):
	if body.is_in_group("enemy"):
		body.take_damage(damage)
		hit_enemy = true
		arrived_at_target()


func create_explosion():
	var explosion = explosion_two.instantiate()
	if hit_enemy == true:
		explosion = explosion_one.instantiate()
		hit_enemy = false
	else:
		explosion = explosion_two.instantiate()
	get_parent().add_child(explosion)
	explosion.position = position


func arrived_at_target():
	create_explosion()
	queue_free()
