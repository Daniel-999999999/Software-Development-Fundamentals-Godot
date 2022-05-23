#This set of code is the finction process of the main menu layout, and allows then buttons to operate, and creates, saves and load the highscore file.
#line 8 to 15 allows the file to be created testing if there is a file on line 10 if not then it creates new file, then load the file, and reads if there has been a score there if not it will create a score once the game has been played
#line 18 to 21 allows fore the buttons that are on screent to have a function, and prints out "Changing scene" to the user
extends Control

func _ready():
	for button in $"layout/Main/Buttons/Game Scenes".get_children():
		button.connect("pressed", self, "_on_button_Pressed", [button.scene_to_load])
	var file = File.new()
	if file.file_exists(GlobalVariables.saveFile):
		var error = file.open(GlobalVariables.saveFile, File.READ)
		if error == OK:
			var player_data = file.get_var()
			file.close()
			GlobalVariables.scoringInformation = player_data
			GlobalVariables.scoringInformation["currentScore"]=0
			
func _on_button_Pressed(scene_to_load):
	print("Changing Scene...")
	print(scene_to_load)
	get_tree().change_scene(scene_to_load)


