#This set of code allows the movement, destruction and shooting of the enemys
#line 9 allows the enemy to collide with barriers/walls
#line 12 to 19 make it so that if the most far out enemy on left hits the barrier it will make all the enemies move to the right so they do not go off screen same goes with the right barrier
#line 22 and so on make it so that there is RNG (Random number generator) and it applies to each individual enemys, where if it gets a certain number then it will create a bullet on the enemie making it allow to shoot downwards at the player
extends KinematicBody2D

var bullet = preload("res://Bullet-Enemy/Bullet-Enemy.tscn")

func _ready():
	print("enemy ready")
	$Area2D.connect("area_entered", self, "_colliding")
	
func _colliding(area):
	print("here")
	if area.is_in_group("right"):
		get_parent().global_position.y += 10
		get_parent().speed = -200
	if area.is_in_group("left"):
		get_parent().global_position.y += 10
		get_parent().speed = 200
		
func _process(delta):
#	while (true):
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var my_random_number = rng.randf_range(2.0, 30.0)
	#print("time: ",my_random_number)
	yield(get_tree().create_timer(my_random_number), "timeout")
	if GlobalVariables.enemyBulletInstanceCount < 5:
		var bulletInstance = bullet.instance()
		
		bulletInstance.position = Vector2(global_position.x, global_position.y+20)
		get_tree().get_root().add_child(bulletInstance)
