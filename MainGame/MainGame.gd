extends Control

export(int) var countdownMax
var currentTimer

# Called when the node enters the scene tree for the first time.
func _ready():
	currentTimer = countdownMax
	$HUD/Countdown.text = str(currentTimer)
	
	while currentTimer > 0:
		yield(get_tree().create_timer(1.0), "timeout")
		$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
		$HUD/Countdown.text = str(currentTimer)
		currentTimer = currentTimer -1
		print(currentTimer)
	print("GAME OVER")
	get_tree().change_scene("res://lose screen/Lose Screen.tscn")
	
	while currentTimer > 0:
		yield (get_tree().create_timer(1.0), "timeout")
		$HUD/Countdown.text = str(currentTimer)
		currentTimer = currentTimer - 1
		print(currentTimer)
	print("Game Over")
	
func _process(delta):
	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
	if get_tree().get_nodes_in_group("Enimie").size() == 0:
		get_tree().change_scene("res://WinScreen.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
