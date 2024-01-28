extends AnimatableBody2D

# Car Sprites to load
const s_spade = preload("res://Assets/CardAssets/Symbol-Spade.png")
const s_heart = preload("res://Assets/CardAssets/Symbol-Heart.png")
const s_diamond = preload("res://Assets/CardAssets/Symbol-Diamond.png")
const s_clover = preload("res://Assets/CardAssets/Symbol-Clover.png")

# Card information
@onready var type_sprite_tl = $TypeSpriteTL
@onready var type_sprite_br = $TypeSpriteBR
@onready var number_tr = $Control/NumberTR
@onready var number_bl = $Control/NumberBL
@onready var number_middle = $Control/NumberMiddle

var current_card : String = "x"
var current_position : Vector2 = Vector2.ZERO
var card_clickable : bool = false


func _ready():
	# current_card = Globals.card_selected
	current_card = Globals.card_selected
	print(current_card)

func _process(delta):
	if card_clickable:
		if Input.is_action_pressed("left_mouse"):
			position = get_global_mouse_position()

func _on_control_mouse_entered():
	card_clickable = true

func _on_control_mouse_exited():
	card_clickable = false

