extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func collision_with_player(body):
	if body is Player:
		for piece in get_tree().get_nodes_in_group("mask_piece"):
			if piece.collected_by_player:
				piece.collected_by_gate = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
