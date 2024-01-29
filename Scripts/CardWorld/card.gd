extends AnimatableBody2D

# Car Sprites to load
const s_club = preload("res://Assets/CardAssets/Symbol-Club.png")
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

var has_card_updated : bool = false

func _ready():
	# current_card = Globals.card_selected
	current_card = Globals.card_selected

func _process(delta):
	if card_clickable:
		if Input.is_action_pressed("left_mouse"):
			position = get_global_mouse_position()
		if Input.is_action_just_released("left_mouse"):
			card_clickable = false
	
	if has_card_updated == false:
		print_card_stats()

func _on_control_mouse_entered():
	card_clickable = true

# func _on_control_mouse_exited():
	# card_clickable = false

func print_card_stats():
	print(current_card)
	if current_card == "club1":
		$TypeSpriteTL.texture = s_club
		$TypeSpriteBR.texture = s_club
		$Control/NumberTR.text = "A"
		$Control/NumberBL.text = "A"
		$Control/NumberMiddle.text = "A"
	elif current_card == "club2":
		$TypeSpriteTL.texture = s_club
		$TypeSpriteBR.texture = s_club
		$Control/NumberTR.text = "2"
		$Control/NumberBL.text = "2"
		$Control/NumberMiddle.text = "2"
	elif current_card == "club3":
		$TypeSpriteTL.texture = s_club
		$TypeSpriteBR.texture = s_club
		$Control/NumberTR.text = "3"
		$Control/NumberBL.text = "3"
		$Control/NumberMiddle.text = "3"
	elif current_card == "club4":
		$TypeSpriteTL.texture = s_club
		$TypeSpriteBR.texture = s_club
		$Control/NumberTR.text = "4"
		$Control/NumberBL.text = "4"
		$Control/NumberMiddle.text = "4"
	elif current_card == "club5":
		$TypeSpriteTL.texture = s_club
		$TypeSpriteBR.texture = s_club
		$Control/NumberTR.text = "5"
		$Control/NumberBL.text = "5"
		$Control/NumberMiddle.text = "5"
	elif current_card == "club6":
		$TypeSpriteTL.texture = s_club
		$TypeSpriteBR.texture = s_club
		$Control/NumberTR.text = "6"
		$Control/NumberBL.text = "6"
		$Control/NumberMiddle.text = "6"
	elif current_card == "club7":
		$TypeSpriteTL.texture = s_club
		$TypeSpriteBR.texture = s_club
		$Control/NumberTR.text = "7"
		$Control/NumberBL.text = "7"
		$Control/NumberMiddle.text = "7"
	elif current_card == "club8":
		$TypeSpriteTL.texture = s_club
		$TypeSpriteBR.texture = s_club
		$Control/NumberTR.text = "8"
		$Control/NumberBL.text = "8"
		$Control/NumberMiddle.text = "8"
	elif current_card == "club9":
		$TypeSpriteTL.texture = s_club
		$TypeSpriteBR.texture = s_club
		$Control/NumberTR.text = "9"
		$Control/NumberBL.text = "9"
		$Control/NumberMiddle.text = "9"
	elif current_card == "club10":
		$TypeSpriteTL.texture = s_club
		$TypeSpriteBR.texture = s_club
		$Control/NumberTR.text = "10"
		$Control/NumberBL.text = "10"
		$Control/NumberMiddle.text = "10"
	elif current_card == "club11":
		$TypeSpriteTL.texture = s_club
		$TypeSpriteBR.texture = s_club
		$Control/NumberTR.text = "J"
		$Control/NumberBL.text = "J"
		$Control/NumberMiddle.text = "J"
	elif current_card == "club12":
		$TypeSpriteTL.texture = s_club
		$TypeSpriteBR.texture = s_club
		$Control/NumberTR.text = "Q"
		$Control/NumberBL.text = "Q"
		$Control/NumberMiddle.text = "Q"
	elif current_card == "club13":
		$TypeSpriteTL.texture = s_club
		$TypeSpriteBR.texture = s_club
		$Control/NumberTR.text = "K"
		$Control/NumberBL.text = "K"
		$Control/NumberMiddle.text = "K"
	if current_card == "clover1":
		$TypeSpriteTL.texture = s_clover
		$TypeSpriteBR.texture = s_clover
		$Control/NumberTR.text = "A"
		$Control/NumberBL.text = "A"
		$Control/NumberMiddle.text = "A"
	elif current_card == "clover2":
		$TypeSpriteTL.texture = s_clover
		$TypeSpriteBR.texture = s_clover
		$Control/NumberTR.text = "2"
		$Control/NumberBL.text = "2"
		$Control/NumberMiddle.text = "2"
	elif current_card == "clover3":
		$TypeSpriteTL.texture = s_clover
		$TypeSpriteBR.texture = s_clover
		$Control/NumberTR.text = "3"
		$Control/NumberBL.text = "3"
		$Control/NumberMiddle.text = "3"
	elif current_card == "clover4":
		$TypeSpriteTL.texture = s_clover
		$TypeSpriteBR.texture = s_clover
		$Control/NumberTR.text = "4"
		$Control/NumberBL.text = "4"
		$Control/NumberMiddle.text = "4"
	elif current_card == "clover5":
		$TypeSpriteTL.texture = s_clover
		$TypeSpriteBR.texture = s_clover
		$Control/NumberTR.text = "5"
		$Control/NumberBL.text = "5"
		$Control/NumberMiddle.text = "5"
	elif current_card == "clover6":
		$TypeSpriteTL.texture = s_clover
		$TypeSpriteBR.texture = s_clover
		$Control/NumberTR.text = "6"
		$Control/NumberBL.text = "6"
		$Control/NumberMiddle.text = "6"
	elif current_card == "clover7":
		$TypeSpriteTL.texture = s_clover
		$TypeSpriteBR.texture = s_clover
		$Control/NumberTR.text = "7"
		$Control/NumberBL.text = "7"
		$Control/NumberMiddle.text = "7"
	elif current_card == "clover8":
		$TypeSpriteTL.texture = s_clover
		$TypeSpriteBR.texture = s_clover
		$Control/NumberTR.text = "8"
		$Control/NumberBL.text = "8"
		$Control/NumberMiddle.text = "8"
	elif current_card == "clover9":
		$TypeSpriteTL.texture = s_clover
		$TypeSpriteBR.texture = s_clover
		$Control/NumberTR.text = "9"
		$Control/NumberBL.text = "9"
		$Control/NumberMiddle.text = "9"
	elif current_card == "clover10":
		$TypeSpriteTL.texture = s_clover
		$TypeSpriteBR.texture = s_clover
		$Control/NumberTR.text = "10"
		$Control/NumberBL.text = "10"
		$Control/NumberMiddle.text = "10"
	elif current_card == "clover11":
		$TypeSpriteTL.texture = s_clover
		$TypeSpriteBR.texture = s_clover
		$Control/NumberTR.text = "J"
		$Control/NumberBL.text = "J"
		$Control/NumberMiddle.text = "J"
	elif current_card == "clover12":
		$TypeSpriteTL.texture = s_clover
		$TypeSpriteBR.texture = s_clover
		$Control/NumberTR.text = "Q"
		$Control/NumberBL.text = "Q"
		$Control/NumberMiddle.text = "Q"
	elif current_card == "clover13":
		$TypeSpriteTL.texture = s_clover
		$TypeSpriteBR.texture = s_clover
		$Control/NumberTR.text = "K"
		$Control/NumberBL.text = "K"
		$Control/NumberMiddle.text = "K"
	if current_card == "heart1":
		$TypeSpriteTL.texture = s_heart
		$TypeSpriteBR.texture = s_heart
		$Control/NumberTR.text = "A"
		$Control/NumberBL.text = "A"
		$Control/NumberMiddle.text = "A"
	elif current_card == "heart2":
		$TypeSpriteTL.texture = s_heart
		$TypeSpriteBR.texture = s_heart
		$Control/NumberTR.text = "2"
		$Control/NumberBL.text = "2"
		$Control/NumberMiddle.text = "2"
	elif current_card == "heart3":
		$TypeSpriteTL.texture = s_heart
		$TypeSpriteBR.texture = s_heart
		$Control/NumberTR.text = "3"
		$Control/NumberBL.text = "3"
		$Control/NumberMiddle.text = "3"
	elif current_card == "heart4":
		$TypeSpriteTL.texture = s_heart
		$TypeSpriteBR.texture = s_heart
		$Control/NumberTR.text = "4"
		$Control/NumberBL.text = "4"
		$Control/NumberMiddle.text = "4"
	elif current_card == "heart5":
		$TypeSpriteTL.texture = s_heart
		$TypeSpriteBR.texture = s_heart
		$Control/NumberTR.text = "5"
		$Control/NumberBL.text = "5"
		$Control/NumberMiddle.text = "5"
	elif current_card == "heart6":
		$TypeSpriteTL.texture = s_heart
		$TypeSpriteBR.texture = s_heart
		$Control/NumberTR.text = "6"
		$Control/NumberBL.text = "6"
		$Control/NumberMiddle.text = "6"
	elif current_card == "heart7":
		$TypeSpriteTL.texture = s_heart
		$TypeSpriteBR.texture = s_heart
		$Control/NumberTR.text = "7"
		$Control/NumberBL.text = "7"
		$Control/NumberMiddle.text = "7"
	elif current_card == "heart8":
		$TypeSpriteTL.texture = s_heart
		$TypeSpriteBR.texture = s_heart
		$Control/NumberTR.text = "8"
		$Control/NumberBL.text = "8"
		$Control/NumberMiddle.text = "8"
	elif current_card == "heart9":
		$TypeSpriteTL.texture = s_heart
		$TypeSpriteBR.texture = s_heart
		$Control/NumberTR.text = "9"
		$Control/NumberBL.text = "9"
		$Control/NumberMiddle.text = "9"
	elif current_card == "heart10":
		$TypeSpriteTL.texture = s_heart
		$TypeSpriteBR.texture = s_heart
		$Control/NumberTR.text = "10"
		$Control/NumberBL.text = "10"
		$Control/NumberMiddle.text = "10"
	elif current_card == "heart11":
		$TypeSpriteTL.texture = s_heart
		$TypeSpriteBR.texture = s_heart
		$Control/NumberTR.text = "J"
		$Control/NumberBL.text = "J"
		$Control/NumberMiddle.text = "J"
	elif current_card == "heart12":
		$TypeSpriteTL.texture = s_heart
		$TypeSpriteBR.texture = s_heart
		$Control/NumberTR.text = "Q"
		$Control/NumberBL.text = "Q"
		$Control/NumberMiddle.text = "Q"
	elif current_card == "heart13":
		$TypeSpriteTL.texture = s_heart
		$TypeSpriteBR.texture = s_heart
		$Control/NumberTR.text = "K"
		$Control/NumberBL.text = "K"
		$Control/NumberMiddle.text = "K"
	if current_card == "diamond1":
		$TypeSpriteTL.texture = s_diamond
		$TypeSpriteBR.texture = s_diamond
		$Control/NumberTR.text = "A"
		$Control/NumberBL.text = "A"
		$Control/NumberMiddle.text = "A"
	elif current_card == "diamond2":
		$TypeSpriteTL.texture = s_diamond
		$TypeSpriteBR.texture = s_diamond
		$Control/NumberTR.text = "2"
		$Control/NumberBL.text = "2"
		$Control/NumberMiddle.text = "2"
	elif current_card == "diamond3":
		$TypeSpriteTL.texture = s_diamond
		$TypeSpriteBR.texture = s_diamond
		$Control/NumberTR.text = "3"
		$Control/NumberBL.text = "3"
		$Control/NumberMiddle.text = "3"
	elif current_card == "diamond4":
		$TypeSpriteTL.texture = s_diamond
		$TypeSpriteBR.texture = s_diamond
		$Control/NumberTR.text = "4"
		$Control/NumberBL.text = "4"
		$Control/NumberMiddle.text = "4"
	elif current_card == "diamond5":
		$TypeSpriteTL.texture = s_diamond
		$TypeSpriteBR.texture = s_diamond
		$Control/NumberTR.text = "5"
		$Control/NumberBL.text = "5"
		$Control/NumberMiddle.text = "5"
	elif current_card == "diamond6":
		$TypeSpriteTL.texture = s_diamond
		$TypeSpriteBR.texture = s_diamond
		$Control/NumberTR.text = "6"
		$Control/NumberBL.text = "6"
		$Control/NumberMiddle.text = "6"
	elif current_card == "diamond7":
		$TypeSpriteTL.texture = s_diamond
		$TypeSpriteBR.texture = s_diamond
		$Control/NumberTR.text = "7"
		$Control/NumberBL.text = "7"
		$Control/NumberMiddle.text = "7"
	elif current_card == "diamond8":
		$TypeSpriteTL.texture = s_diamond
		$TypeSpriteBR.texture = s_diamond
		$Control/NumberTR.text = "8"
		$Control/NumberBL.text = "8"
		$Control/NumberMiddle.text = "8"
	elif current_card == "diamond9":
		$TypeSpriteTL.texture = s_diamond
		$TypeSpriteBR.texture = s_diamond
		$Control/NumberTR.text = "9"
		$Control/NumberBL.text = "9"
		$Control/NumberMiddle.text = "9"
	elif current_card == "diamond10":
		$TypeSpriteTL.texture = s_diamond
		$TypeSpriteBR.texture = s_diamond
		$Control/NumberTR.text = "10"
		$Control/NumberBL.text = "10"
		$Control/NumberMiddle.text = "10"
	elif current_card == "diamond11":
		$TypeSpriteTL.texture = s_diamond
		$TypeSpriteBR.texture = s_diamond
		$Control/NumberTR.text = "J"
		$Control/NumberBL.text = "J"
		$Control/NumberMiddle.text = "J"
	elif current_card == "diamond12":
		$TypeSpriteTL.texture = s_diamond
		$TypeSpriteBR.texture = s_diamond
		$Control/NumberTR.text = "Q"
		$Control/NumberBL.text = "Q"
		$Control/NumberMiddle.text = "Q"
	elif current_card == "diamond13":
		$TypeSpriteTL.texture = s_diamond
		$TypeSpriteBR.texture = s_diamond
		$Control/NumberTR.text = "K"
		$Control/NumberBL.text = "K"
		$Control/NumberMiddle.text = "K"
	has_card_updated = true
