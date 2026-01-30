extends CharacterBody2D






	
	
	


@export var SPEED := 200.0
@export var DASH := 300.0
var dashing = false
var cooldown = true

func _physics_process(delta):
		var input_direction = Input.get_vector("left", "right", "up", "down")
		if Input.is_action_just_pressed("dash") and cooldown:
			dashing = true
			cooldown = false
			$dash_timer.start()
			$cooldown.start()
		if dashing:
			velocity = input_direction * (SPEED + DASH)
		else:
			velocity = input_direction * SPEED
		move_and_slide()



func finish_dash():
	dashing = false
	print("Test")


func finish_cooldown():
	cooldown = true
