extends KinematicBody2D

var _speed = 5
onready var _Projectile = load("res://Projectile.tscn")

func _ready():
	pass

func _process(_delta):
	pass

func _physics_process(_delta):
	position += get_input()*_speed
	
	if Input.is_action_just_pressed("shoot"):
		var projectile = _Projectile.instance()
		projectile.position = position - Vector2(0,45)
		get_node("/root/Game/Projectiles").add_child(projectile)

func get_input():
	var input_dir = Vector2(0,0)
	if Input.is_action_pressed("left"):
		input_dir.x -= 1
	if Input.is_action_pressed("right"):
		input_dir.x += 1
	return input_dir
