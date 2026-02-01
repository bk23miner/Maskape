extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func collision_with_player(body):
	if body is Player:
		for piece in get_tree().get_nodes_in_group("mask_piece"):
			if piece.collected_by_player:
				piece.collected_by_gate = true


func change_mask():
	$gate_object/mask_texture.texture = load("res://assets/stuff/masks/mask_stuffe%d.png" % [Game.collected_pieces])



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
