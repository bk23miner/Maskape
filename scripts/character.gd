class_name Player extends CharacterBody2D

@export var SPEED := 200.0
@export var DASH := 300.0

var dashing = false
var cooldown = true
var last_direction := "front"
var is_picking_up = false
var was_walking = false

@onready var body: AnimatedSprite2D = $Body

func _physics_process(delta):
	if is_picking_up:
		was_walking = false
		$AudioStreamPlayer2D.stop()
		return
	var input_direction = Input.get_vector("left", "right", "up", "down")
	if Input.is_action_just_pressed("dash") and cooldown:
		dashing = true
		cooldown = false
		$dash_timer.start()
		$cooldown.start()
	if dashing:
		velocity = input_direction * (SPEED + DASH)
		body.frame = 1
	else:
		velocity = input_direction * SPEED
	move_and_slide()

	if velocity.length_squared()>0:
		if not was_walking:
			$AudioStreamPlayer2D.play()
		was_walking = true
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
		was_walking = false
		play_idle()
		$AudioStreamPlayer2D.stop()

func play_idle():
	match last_direction:
		"right":
			body.play("idle_r")
		"left":
			body.play("idle_l")
		"back":
			body.play("idle_b")
		"front":
			body.play("idle_f")


func finish_dash():
	dashing = false
	print("Test")


func pickup():
	is_picking_up = true
	if last_direction == "left":
		body.play("pickup_left")
	else:
		body.play("pickup_right")
	await body.animation_finished
	is_picking_up = false

func finish_cooldown():
	cooldown = true
