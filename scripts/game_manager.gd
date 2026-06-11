extends Node

var score = 0
var total_coins = 0

@onready var coin_counter = $CoinCounter
@onready var score_label: Label = $scoreLabel


func _ready():
	total_coins = get_tree().get_nodes_in_group("coins").size()

	print("TOTAL COINS FOUND: ", total_coins)

	score_label.text = "you collected 0 / " + str(total_coins) + " coins!"
	coin_counter.update_coins(score, total_coins)


func add_point():
	score += 1

	score_label.text = "you collected " + str(score) + " / " + str(total_coins) + " coins!"
	coin_counter.update_coins(score, total_coins)


func collected_all_coins():
	return score >= total_coins
