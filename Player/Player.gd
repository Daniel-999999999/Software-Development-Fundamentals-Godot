extends KinematicBody2D

var movement_speed = 200
var bulletSource = preload ("res://Bullet/Bullet.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	set_physics_process(true) # Replace with function body.

# warning-ignore:unused_argument
func _process(delta):
	if Input.is_action_just_pressed("fire"):
		var bulletInstance = bulletSource.instance()
# warning-ignore:standalone_expression
		bulletInstance.position - Vector2(position.x, position.y-20)
		get_tree().getroot().add_child(bulletInstance)

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
# warning-ignore:return_value_discarded
		move_and_collide(Vector2(-movement_speed * delta, 0))
	if Input.is_action_pressed("ui_right"):
# warning-ignore:return_value_discarded
		move_and_collide(Vector2(movement_speed * delta, 0))
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
