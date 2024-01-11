extends Node2D

var player_score : float = 0
var player_health : float = 5

@onready var player_health_text = $PlayerGUI/PlayerHealth
@onready var player_score_text = $PlayerGUI/PlayerScore

# Called when the node enters the scene tree for the first time.
func _ready():
	update_text()

func update_text():
	player_health_text.text = str(player_health)
	player_score_text.text = str(player_score)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
