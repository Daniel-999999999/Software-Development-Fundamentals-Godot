#return button to main menu
#if the button has been presssed the line 21 to 22 will activatie and tell the program to return to the mian scene
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


func _on_return_pressed():
	get_tree().change_scene("res://Menu/main.tscn")
