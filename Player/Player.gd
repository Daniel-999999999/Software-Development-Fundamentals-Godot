#this code allows the player to move, shoot, collide with border, and use rapid fire
#extends KinetmaticBody2D is used for implementing bodies that are going to be controlled by code
#line 6 to 7 sets the bullet speed/prejectile once it has launched from the player, and line 7 preload the bullet ready to  be shot
#line 18 to 22 checks if the global variable for rapid fire has been selected if so then it allows it so that you can hold spacebar and it iwll constatnly shoot, and it has not been checked then it will use code from line 24 to 27, making it so that you shoot one bullet every time space bar is pressed
#line 30 to 38 make it so the if it detects a input either on the left or right arrow key then it will play the code below it being able to move the player to the left or the right at a certain speed that has been created
extends KinematicBody2D

var movement_speed = 200
var bulletSource = preload ("res://Bullet/Bullet.tscn")
# Declare member variables here. Examples:

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	set_physics_process(true) # Replace with function body.

# warning-ignore:unused_argument
func _process(delta):
	if GlobalVariables.rapidFire:
		if Input.is_action_pressed("fire"):
			var bulletInstance = bulletSource.instance()
			bulletInstance.position = Vector2(position.x, position.y-20)
			get_tree().get_root().add_child(bulletInstance)
	else:
		if Input.is_action_just_pressed("fire"):
			var bulletInstance = bulletSource.instance()
			bulletInstance.position = Vector2(position.x, position.y-20)
			get_tree().get_root().add_child(bulletInstance)

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		if position.x <= -7:
			position.x = 1250
		move_and_collide(Vector2(-movement_speed * delta, 0))
	if Input.is_action_pressed("ui_right"):
		if position.x >= 1250:
			position.x = -7
		move_and_collide(Vector2(movement_speed * delta, 0))
	if Input.is_action_pressed("ui_up"):
		get_tree().change_scene("res://WinScreen.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
