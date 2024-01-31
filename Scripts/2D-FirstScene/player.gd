extends CharacterBody2D

@export var speed : float = 120.0

var current_position : Vector2 = Vector2.ZERO
var can_take_damage : bool = true

@onready var orb = preload("res://Scenes/2D-FirstScene/orb.tscn")
@onready var damage_timer = $DamageTimer


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


func _on_damage_timer_timeout():
	can_take_damage = true


func _on_damage_area_2d_body_entered(body):
	if body.is_in_group("enemy") && can_take_damage == true:
		print("taking damage?")
		get_parent().player_health = get_parent().player_health - body.damage_given
		can_take_damage = false
		damage_timer.start()
		get_parent().update_text()
