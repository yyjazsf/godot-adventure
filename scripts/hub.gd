extends CanvasLayer

@onready var score_label: Label = $Label

func _ready() -> void:
	# 连接全局分数变化信号
	Global.score_changed.connect(_on_score_changed)
	# 初始化显示分数
	score_label.text = "score: %d" % Global.score

func _on_score_changed(new_score: int) -> void:
	score_label.text = "score: %d" % new_score
