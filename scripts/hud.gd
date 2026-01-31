extends Node2D
@onready var label: Label = $CanvasLayer/Label
var max_mask_count = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	max_mask_count = get_tree().get_node_count_in_group("mask_piece")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	label.text = "%d / %d" % [Game.collected_pieces, max_mask_count ]  
