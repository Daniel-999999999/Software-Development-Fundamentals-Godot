extends Button

export(String) var scene_to_load

func _ready():
	get_tree().change_scene("res")
