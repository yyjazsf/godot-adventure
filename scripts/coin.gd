extends Area2D


func _on_coin_entered(_body: Node2D) -> void:
	Global.score += 1
	# 离谱
	$"../collectAudio".play()
	queue_free()
