extends CharacterBody2D

var direction = 1
var speed = 8

func _on_hit_box_body_entered(_body: Node2D) -> void:
	call_deferred("reload")

func reload():
	Global.player_died()
	
func _physics_process(delta: float) -> void:
	position.x += direction * speed * delta
	if $RayCast2D.is_colliding():
		direction = -direction
		if direction == 1:
			$RayCast2D.rotation = 0
			$AnimatedSprite2D.flip_h = false
		else:
			$RayCast2D.rotation = 180
			$AnimatedSprite2D.flip_h = true
