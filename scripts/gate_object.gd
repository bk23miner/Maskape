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
	var tween = get_tree().create_tween()
	tween.tween_property(get_parent().get_node("AudioStreamPlayer2D"), "volume_db", -100, 2)
	tween.play()
	$AudioStreamPlayer2D.play()
	$gate_object/CollisionShape2D.queue_free()


func end(body):
	if body is Player:
		Game.credits.visible = true
		await get_tree().create_timer(10.0).timeout
		Game.credits.visible = false
		Game.world.queue_free()
		Game.stop_game()
#	if body is Player :
#		print("end")
#		get_tree().change_scene_to_file("res://scenes/main.tscn")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
