#used for all the global variables
#all the code here allow for certain variables to activate or deactives but are always activated due to other cide
extends Node

var rapidFire = false

var saveFile = "user://save.dat"

var bulletInstanceCount = 0 # Keeps track of how many bullet instances are current
var enemyBulletInstanceCount = 0

var previousScores = []

var scoringInformation = {
	"currentScore" : 0,
	"currentPlayer" : "User",
	"highScores" : [0,0,0,0,0],
	"highScorePlayersName" : "Winner"
}
