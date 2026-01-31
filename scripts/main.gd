extends Node2D

var start_screen: Node = null

# Called when the node enters the scene tree for the first time.

func _ready():

	var scene = load("res://scenes/start_screen.tscn")
	var instance = scene.instantiate()
	add_child(instance)
	$Timer.start()

	start_screen = instance



	


func go_to_menu() -> void:
	if start_screen:
		start_screen.queue_free()

	var scene = load("res://scenes/menu.tscn")
	var instance = scene.instantiate()
	add_child(instance)
