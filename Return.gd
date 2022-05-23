#this allows for the buttons to be operated
#line 21 to 22 allows for the quit button to close the game once clicked
#line 26 to 27 changes screen to the options menu
#line 31 ti 32 restarts the game taking it back to the actual game
extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_quit_pressed():
	get_tree().quit()


func _on_Return_pressed():
	get_tree().change_scene("res://Menu/main.tscn")


func _on_restart_pressed():
	get_tree().change_scene("res://MainGame/MainGame.tscn")
