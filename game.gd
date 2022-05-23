#load highscore
#this locates the highscore file and loads to highscore into the game
extends Node

var beatscore = 0
const filepath = "user://beatscore.data"

func _ready():
	load_beatscore()
	pass
	
