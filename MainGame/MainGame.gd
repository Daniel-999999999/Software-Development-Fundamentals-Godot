#this code makes the main game functionable making it playable, and by adding all the feature needed
#line 5 to 6 creates a timer that is displayed in the game
#line 10 to 22 firstly reads the global variables and then picks out the timer, and then sets the timer to whatever timer it has been set too, abd then counts down the timer by -1, and once the timer hits 0 then it will change scene to the losing screen
#line 25 to 32 allows the points to be gained when and enemy has been shot at, the 2nd line creates the scoring system/information, but at anytime it always detects how many enemires are left in a group and if it hits 0, then it will go to the winning screen
extends Control

export(int) var countdownMax
var currentTimer

# Called when the node enters the scene tree for the first time.
func _ready():
	currentTimer = countdownMax
	$HUD/Countdown.text = str(currentTimer)
	GlobalVariables.scoringInformation["currentScore"] = 0
	
	while currentTimer > 0:
		yield(get_tree().create_timer(1.0), "timeout")
		$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
		$HUD/Countdown.text = str(currentTimer)
		currentTimer = currentTimer -1
		#print(currentTimer)
	print("GAME OVER")
	get_tree().change_scene("res://lose screen/Lose Screen.tscn")
	
func _process(delta):
	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
	#print(get_tree().get_nodes_in_group("enemy").size())
	if get_tree().get_nodes_in_group("enemy").size() == 0:
		print("all enemy dead")
		get_tree().change_scene("res://Win Screen/WinScreen.tscn")

	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
