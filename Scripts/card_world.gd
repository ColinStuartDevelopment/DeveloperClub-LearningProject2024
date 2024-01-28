extends Node2D

const CARD = preload("res://Scenes/CardWorld/card.tscn")

var cards_in_deck : Array = ["club1", "club2", "club3", "club4", "club5", "club6", "club7", "club8", "club9", "club10", "club11", "club12", "club13", "spade1", "spade2", "spade3", "spade4", "spade5", "spade6", "spade7", "spade8", "spade9", "spade10", "spade11", "spade12", "spade13", "heart1", "heart2", "heart3", "heart4", "heart5", "heart6", "heart7", "heart8", "heart9", "heart10", "heart11", "heart12", "heart13", "diamond1", "diamond2", "diamond3", "diamond4", "diamond5", "diamond6", "diamond7", "diamond8", "diamond9", "diamond10", "diamond11", "diamond12", "diamond13"]
var cards_in_deck_number : int = 51

var cards_being_shuffled : Array = []
var cards_being_shuffled_number : int = 0

var cards_in_hand : Array = []
var cards_in_hand_number : int = 0

var card_exchange = "x"


# Called when the node enters the scene tree for the first time.
func _ready():
	shuffle_deck()

func shuffle_deck():
	for i in 52:
		# PGenerate a number to decide what card to pull
		cards_being_shuffled_number = randi_range(0, cards_in_deck_number)
		# Create a variable to hold a card and then pull it
		card_exchange = cards_in_deck[cards_being_shuffled_number]
		# Take that pulled card and put it in the new shuffled deck
		cards_being_shuffled.append(card_exchange)
		# Remove the card from the deck it was taken from
		cards_in_deck.remove_at(cards_being_shuffled_number)
		# Reduce the number of cards in deck and add the number of cards being shuffled
		cards_in_deck_number = cards_in_deck_number - 1
		cards_being_shuffled_number = cards_being_shuffled_number + 1
	# place all cards that have been shuffled back into the cards in deck
	cards_in_deck = cards_being_shuffled.duplicate()
	cards_in_deck_number = cards_being_shuffled_number
	# remove all cards from the shuffled place holder
	for i in 52:
		cards_being_shuffled.remove_at(cards_being_shuffled_number)
		cards_being_shuffled_number = cards_being_shuffled_number - 1
	print("Deck has been shuffled...")


func _on_shuffle_deck_button_pressed():
	shuffle_deck()


func _on_draw_card_button_pressed():
	card_exchange = cards_in_deck[cards_in_deck_number]
	cards_in_deck.remove_at(cards_in_deck_number)
	cards_in_deck_number -= 1
	Globals.card_selected = card_exchange
	var card_in_game = CARD.instantiate()
	add_child(card_in_game)
	card_in_game.position = get_global_mouse_position()


