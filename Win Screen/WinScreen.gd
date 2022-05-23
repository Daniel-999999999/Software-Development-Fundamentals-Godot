#screen is displayed once you have won
#line 7 to 21 allows the highscore that the user has got to be saved in a document by opening an already existing file for the game, and then edits the file putting in the highscore and saving the file, and then resets the currentscore for the game back to 0
extends Node2D

func _ready():
# Sorts the array
	GlobalVariables.scoringInformation["highScores"].sort()
	
	# Searches the array for the value, or the position in the array where it will "fit".
	var highScorePosition = GlobalVariables.scoringInformation["highScores"].bsearch(GlobalVariables.scoringInformation["currentScore"], true)
	print("position #", highScorePosition)
		
	# Inserts the value into the array at the correct position.
	GlobalVariables.scoringInformation["highScores"].insert(highScorePosition, GlobalVariables.scoringInformation["currentScore"])
		
	# Removes the first (and lowest) score.
	GlobalVariables.scoringInformation["highScores"].remove(0)
		
	# Debugging.
	print(GlobalVariables.scoringInformation["highScores"])
	saveData()

func saveData():
	GlobalVariables.scoringInformation["currentScore"]=0
	var file = File.new()
	var error = file.open(GlobalVariables.saveFile, file.WRITE)
	if error == OK:
		file.store_var(GlobalVariables.scoringInformation)
		file.close()
		print("!!Data Saved!!")
	else :
		print("!!Data Not Saved!!")
