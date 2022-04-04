extends Control

func _ready():
	for button in $"layout/Main/Buttons/Game Scenes".get_children():
		button.connect("pressed", self, "_on_Button_Pressed", [button.scene_to_load])
		
func _on_button_Pressed(scene_to_load):
	print(scene_to_load)
	get_tree().change_scene(scene_to_load)
