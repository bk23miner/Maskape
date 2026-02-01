extends Node

var world_active: Node = null
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	world_active = get_tree().get_first_node_in_group("world")


func collision_with_player(body):
	if body is Player:
		for piece in get_tree().get_nodes_in_group("mask_piece"):
			if piece.collected_by_player:
				piece.collected_by_gate = true


func change_mask():
	$gate_object/mask_texture.texture = load("res://assets/stuff/masks/mask_stuffe%d.png" % [Game.collected_pieces])


func open():
	$gate_object/mask_texture.hide()
	$gate_object/gate_texture.texture = load("res://assets/gate_without_door.png")
	$gate_object/CollisionShape2D.queue_free()

func end(body):
	if body is Player:
		Game.stop_game()
#	if body is Player :
#		print("end")
#		get_tree().change_scene_to_file("res://scenes/main.tscn")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
