extends Node2D

var player_score : float = 0
var player_health : float = 5

@onready var player_health_text = $PlayerGUI/PlayerHealth
@onready var player_score_text = $PlayerGUI/PlayerScore
@onready var progress_bar_one = $PlayerGUI/ProgressBarOne
var progress_bar_one_value : float = 0.0
@onready var timer_to_break_free = $PlayerGUI/TimerToBreakFree
var time_speed_up : float = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	time_speed_up = 1.0
	update_text()

func update_text():
	player_health_text.text = str(player_health)
	player_score_text.text = str(player_score)
	time_speed_up = time_speed_up + (player_score / 120)
	print(time_speed_up)

func _physics_process(delta):
	progress_bar_one_value = progress_bar_one_value + delta * time_speed_up
	update_progress_bar()

func update_progress_bar():
	progress_bar_one.value = progress_bar_one_value
	if progress_bar_one.value >= progress_bar_one.max_value:
		get_tree().change_scene_to_file("res://Scenes/CardWorld/card_world.tscn")

func progress_bar_completed():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
