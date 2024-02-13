extends CharacterBody2D

@onready var rolling_timer = $RollingTimer
@export var speed : float = 200.0
@export var speed_rolling_multiplyer : float = 200.0

var current_position : Vector2 = Vector2.ZERO
var player_velocity_pre_roll : Vector2 = Vector2.ZERO
var player_rolling : bool = false

func _physics_process(delta):
	current_position = position
	player_velocity_pre_roll = velocity
	velocity = Vector2.ZERO
	
	if Input.is_action_just_pressed("roll") && player_rolling == false:
		player_rolling = true
		rolling_timer.start(1.0)
	
	if player_rolling == false:
		player_input_movement()
	elif player_rolling == true:
		velocity.x = player_velocity_pre_roll.x + speed_rolling_multiplyer
		velocity.y = player_velocity_pre_roll.y + speed_rolling_multiplyer
	
	# If the player is moving, then have him move, if this isn't here weird stuff happens
	if velocity != Vector2.ZERO:
		velocity = velocity.normalized() * speed
	
	# A simple script to have the player rotate to look at the mouse position
	look_at(get_global_mouse_position())
	
	# Move and slide uses Godot's velocity to move the player based on the physics engine
	move_and_slide()


func player_input_movement():
		if Input.is_action_pressed("left"):
			velocity.x -= 1
		if Input.is_action_pressed("right"):
			velocity.x += 1
		if Input.is_action_pressed("up"):
			velocity.y -= 1
		if Input.is_action_pressed("down"):
			velocity.y += 1


func _on_rolling_timer_timeout():
	player_rolling = false
	rolling_timer.stop()
