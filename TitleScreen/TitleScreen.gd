extends Control

func _ready():
	$HighScoreLabel.text = "Highscore: " + str(Global.high_score)


func _process(delta):
	if Input.is_action_just_pressed("jump"):
		get_tree().change_scene("res://Level/Level.tscn")
