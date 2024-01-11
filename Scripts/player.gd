extends CharacterBody2D

@export var speed : float = 120.0
var current_position : Vector2 = Vector2.ZERO
@onready var orb = preload("res://Scenes/orb.tscn")


func _physics_process(delta):
	current_position = position
	velocity = Vector2.ZERO
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_just_pressed("left_mouse"):
		create_orb()
	
	if velocity != Vector2.ZERO:
		velocity = velocity.normalized() * speed
	
	move_and_slide()

func create_orb():
	var orb_object = orb.instantiate()
	get_parent().add_child(orb_object)
	orb_object.position = position

