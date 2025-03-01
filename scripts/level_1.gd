extends Node2D

# 背景色
#B0D9D1（RGB: 176, 217, 209）
#A3CFC6（RGB: 163, 207, 198）
#9AC3BC（RGB: 154, 195, 188）

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if not Music.playing:
		Music.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
