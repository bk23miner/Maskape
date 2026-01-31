extends Node2D



# Called when the node enters the scene tree for the first time.

func _ready():
	var scene = load("res://scenes/menu.tscn")
	var instance = scene.instantiate()
	add_child(instance)
