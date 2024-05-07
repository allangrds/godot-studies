extends Area2D

@onready var timer = $Timer

const SLOWMOTION_TIME = 0.5

func _on_body_entered(body):
	Engine.time_scale = SLOWMOTION_TIME
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
