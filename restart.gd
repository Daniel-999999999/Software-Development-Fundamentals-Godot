extends Button

func _on_Button_pressed():
	GlobalVariables.scoringInformation["currentScore"]=0
	get_tree().change_scene("res://MainGame/MainGame.tscn")

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
