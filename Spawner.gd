extends Node2D

onready var Enemy = load("res://Obstacles/Enemy.tscn")
onready var Asteroid = load("res://Obstacles/Asteroid.tscn")
export var prob = 0.8
export var prob2 = 0.8

onready var width = get_viewport().size.x

func _on_Timer_timeout():
	if randf() < prob:
		var enemy = Enemy.instance()
		enemy.position.x = randi() % int(width)
		enemy.speed = Vector2(0, (randi() % 5)+1)
		add_child(enemy)
		
	if randf() < prob:
		var asteroid = Asteroid.instance()
		asteroid.position.x = randi() % int(width)
		asteroid.speed = Vector2(0, (randi() % 5)+1)
		add_child(asteroid)
		
		
