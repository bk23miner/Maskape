extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func start_game():
	#await get_tree().process_frame
	#var scene = load("res://scenes/game.tscn")
	#var instance = scene.instantiate()
	#add_child(instance)
	print("start game")
