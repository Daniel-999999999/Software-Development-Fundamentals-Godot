extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().change_scene("res://Menu/main.tscn")


func _on_Button_pressed():
	pass # Replace with function body.
