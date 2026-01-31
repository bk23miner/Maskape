extends Area2D

var collected_by_player = false
var collected_by_gate = false


var player
var gate

@onready var sprite: Sprite2D = $Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player = get_tree().get_first_node_in_group("player")
	gate = get_tree().get_first_node_in_group("gate")
	sprite.modulate = Color.from_hsv(randf(), 1, 1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player.is_picking_up:
		return
	if collected_by_gate:
		position = position.lerp(gate.position, delta)
		if (position-gate.position).length() < 10:
			Game.add_piece()
			queue_free()
	elif collected_by_player:
		global_position = global_position.lerp(player.get_node("target").global_position, delta)

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		var count = 0
		for piece in get_tree().get_nodes_in_group("mask_piece"):
			if piece.collected_by_player:
				count += 1
		if count < 1:
			collected_by_player = true
			$AudioStreamPlayer2D.play()
			player.pickup()

			
