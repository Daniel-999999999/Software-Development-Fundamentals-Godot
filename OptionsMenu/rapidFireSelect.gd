#this set of code allows for the rapidifre option to be enabled
#line 21 to 22 allows for the checkbox of the rapidfire option to be selected and deselected and if so then it will send a signal to the global variables
extends CheckButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_rapidFireSelect_toggled(button_pressed):
	GlobalVariables.rapidFire = button_pressed
