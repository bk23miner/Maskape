extends Node2D

var game_running = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




func stop_game():
	var scene = load("res://scenes/menu.tscn")
	var instance = scene.instantiate()
	add_child(instance)

func start_game():
	var scene = load("res://scenes/world1.tscn")
	var instance = scene.instantiate()
	add_child(instance)
	game_running = true
	
	

	



	
	
#func start_game():
	#await get_tree().process_frame
	#var scene = load("res://scenes/game.tscn")
	#var instance = scene.instantiate()
	#add_child(instance)
	#print("start game")
