extends Node

signal score_changed(new_score: int)

# get and set score
var _score: int = 0
var score: int:
	get:
		return _score
	set(value):
		_score = value
		score_changed.emit(_score)

func stop_current_level_music() -> void:
	var current_scene = get_tree().current_scene
	if current_scene and current_scene.has_node("music"):
		var music_node = current_scene.get_node("music")
		music_node.replay()

func reset_game() -> void:
	stop_current_level_music()
	score = 0
	get_tree().reload_current_scene()

func player_died() -> void:
	reset_game()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
