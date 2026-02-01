extends Node2D

@export var texture = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if texture == 0:
		$Sprite2D.texture = load("res://assets/stuff/lanterns/purple-lantern.png")
	elif texture == 1:
		$Sprite2D.texture = load("res://assets/stuff/lanterns/blue-lantern.png")
	elif texture == 2:
		$Sprite2D.texture = load("res://assets/stuff/lanterns/green-lantern.png")
	elif texture == 3:
		$Sprite2D.texture = load("res://assets/stuff/lanterns/red-lantern.png")
	elif texture == 4:
		$Sprite2D.texture = load("res://assets/stuff/lanterns/pink-lantern.png")
	elif texture == 5:
		$Sprite2D.texture = load("res://assets/stuff/lanterns/yellow-lantern.png")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
