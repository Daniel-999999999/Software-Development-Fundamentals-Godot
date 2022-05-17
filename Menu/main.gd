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


