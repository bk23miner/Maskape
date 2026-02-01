extends Node2D

var mode = 0
var collected_pieces = 0
var game_running = false
var dialog_node: Node = null
var node_need: Node = null
var dialog : Node = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func stop_game():
	collected_pieces = 0
	var scene = load("res://scenes/menu.tscn")
	var instance = scene.instantiate()
	add_child(instance)

func start_game():
	#var scene = load("res://scenes/dialog.tscn")
	#var instance = scene.instantiate()
	#add_child(instance)
	#dialog_node = instance
	#await dialog_node.start_dialog()
	if mode == 1:
		var scene = load("res://scenes/world1.tscn")
		var instance = scene.instantiate()
		add_child(instance)
		game_running = true
		dialog = get_tree().get_first_node_in_group("dialog")
		

	elif mode == 0:
		var scene = load("res://scenes/world0.tscn")
		var instance = scene.instantiate()
		add_child(instance)
		game_running = true
		dialog = get_tree().get_first_node_in_group("dialog")
		
	#node_need = instance
	#node_need.run_dialog

func add_piece():
	collected_pieces += 1
	dialog.dialog_submit_mask(collected_pieces)
	


#func start_game():
	#await get_tree().process_frame
	#var scene = load("res://scenes/game.tscn")
	#var instance = scene.instantiate()
	#add_child(instance)
	#print("start game")
