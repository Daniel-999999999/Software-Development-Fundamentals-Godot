#Allows for the suer to close the program
#line 18 to 19 allows for the program to shutdown if it is clicked
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
func _pressed():
	get_tree().quit()
