extends CharacterBody2D

@export var speed : float = 400
@export var damage :  float = 1.0
var target = Vector2.ZERO


func _ready():
	assign_target()
	print("I exist!")
	

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

func arrived_at_target():
	print("Goodbye")
	queue_free()

func _on_enemy_detection_body_entered(body):
	if body.is_in_group("enemy"):
		#body.take_damage(damage)
		arrived_at_target()
