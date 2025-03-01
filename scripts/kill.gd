extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name.contains("player"):
		$Timer.start()
	else:
		body.queue_free()

func _on_timer_timeout() -> void:
	Global.player_died()
	
