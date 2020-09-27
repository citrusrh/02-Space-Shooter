extends KinematicBody2D

onready var HUD = get_node("/root/Game/HUD")

export var speed = Vector2(0,3)
export var points = 10

func _physics_process(_delta):
	position += speed

	if position.y > get_viewport().size.y + 100:
		queue_free()
	
func _on_Area2D_body_entered(body):
	HUD.update_score(points)
	body.queue_free()
	queue_free()
