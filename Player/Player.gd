extends KinematicBody2D

const GRAVITY = 10
const JUMP_SPEED = -400


var velocity = Vector2.ZERO


func _process(delta):
	velocity.y += GRAVITY
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_SPEED
	
	if is_on_floor():
		$AnimatedSprite.play("walk")
	else:
		$AnimatedSprite.play("jump")
		
	if(Global.current_score > Global.high_score):
		Global.high_score = Global.current_score
	 
	move_and_slide(velocity, Vector2.UP)
	
	
func end_game():
	get_tree().change_scene("res://TitleScreen/TitleScreen.tscn")
