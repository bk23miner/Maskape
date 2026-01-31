class_name Player extends CharacterBody2D



@export var SPEED := 200.0
@export var DASH := 300.0

var dashing = false
var cooldown = true
var last_direction := "front"

@onready var body: AnimatedSprite2D = $Body

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

	if velocity.length_squared()>0:
		var direction = velocity.angle_to(Vector2(1, 0))
		#rechts	
		if direction <= PI/4.0 and direction >=-PI/4.0:
			last_direction = "right"
			body.play("right")
		#oben
		if direction >= PI/4.0 and direction <=PI*0.75:
			last_direction = "back"
			body.play("back")
		#links
		if direction >=PI*0.75 or direction <=-PI*0.75:
			last_direction = "left"
			body.play("left")
		#unten
		if direction <=-PI/4.0 and direction >=-PI*0.75:
			last_direction = "front"
			body.play("front")
			#print("test")
	else:
		play_idle()

func play_idle():
	match last_direction:
		"right":
			body.play("idle_r")
		"left":
			body.play("idle_l")
		"back":
			body.play("idle_f")
		"front":
			body.play("idle_f")


func finish_dash():
	dashing = false
	print("Test")


func finish_cooldown():
	cooldown = true
