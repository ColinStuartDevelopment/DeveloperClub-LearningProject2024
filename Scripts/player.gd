extends CharacterBody2D

@export var speed : float = 120.0

func _physics_process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	
	if velocity != Vector2.ZERO:
		velocity = velocity.normalized() * speed
	
	move_and_slide()

