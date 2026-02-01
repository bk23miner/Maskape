extends Node2D
@onready var lantern_img: Sprite2D = $lantern_img
@export var lantern_texture = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if lantern_texture == 0:
		lantern_img.texture = load("res://assets/stuff/lanterns/purple-lantern.png")
	elif lantern_texture == 1:
		lantern_img.texture = load("res://assets/stuff/lanterns/blue-lantern.png")
	elif lantern_texture == 2:
		lantern_img.texture = load("res://assets/stuff/lanterns/green-lantern.png")
	elif lantern_texture == 3:
		lantern_img.texture = load("res://assets/stuff/lanterns/red-lantern.png")
	elif lantern_texture == 4:
		lantern_img.texture = load("res://assets/stuff/lanterns/pink-lantern.png")
	elif lantern_texture == 5:
		lantern_img.texture = load("res://assets/stuff/lanterns/yellow-lantern.png")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
