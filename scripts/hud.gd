extends Node2D
@onready var label: TextureRect = $CanvasLayer/VBoxContainer/Label
var max_mask_count = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	max_mask_count = get_tree().get_node_count_in_group("mask_piece")
	$Dialog.start_dialog()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	label.texture = load("res://assets/stuff/masks/mask_stuffe%d.png" % [Game.collected_pieces])
