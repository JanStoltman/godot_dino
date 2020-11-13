extends Node


const OBSTACLE = preload("res://Box/Box.tscn")

func _ready():
	Global.current_score = 0


func _on_Timer_timeout():
	var obstacle = OBSTACLE.instance()
	add_child(obstacle)


func _on_ScoreTimer_timeout():
	Global.current_score += 1
	
	
func _process(delta):
	$Label.text = "Current score: " + str(Global.current_score)	
