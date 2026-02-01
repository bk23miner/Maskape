extends Node2D

var mode = 0
var collected_pieces = 0
var game_running = false
var dialog_node: Node = null
var node_need: Node = null
var dialog : Node = null
var gate: Node = null
var world: Node = null
@onready var credits: TextureRect = $CanvasLayer/VBoxContainer/TextureRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	credits.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func restart_game():
	get_tree().reload_current_scene()


func stop_game():
	world.queue_free()
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
	var scene: PackedScene
	if mode == 0:
		scene = load("res://scenes/world1.tscn")
	elif mode == 1:
		scene = load("res://scenes/world0.tscn")
	world = scene.instantiate()
	add_child(world)
	game_running = true
	dialog = get_tree().get_first_node_in_group("dialog")
	gate = get_tree().get_first_node_in_group("gate")
	#node_need = instance
	#node_need.run_dialog

func add_piece():
	collected_pieces += 1
	if collected_pieces == 6:
		gate.open()
	dialog.dialog_submit_mask(collected_pieces)
	


#func start_game():
	#await get_tree().process_frame
	#var scene = load("res://scenes/game.tscn")
	#var instance = scene.instantiate()
	#add_child(instance)
	#print("start game")
