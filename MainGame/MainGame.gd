
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
