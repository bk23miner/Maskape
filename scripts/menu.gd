extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Game.mode == 0:
		$Control/VBoxContainer/map.texture_normal = load("res://assets/Menu/medium1.png")
		$Control/VBoxContainer/map.texture_hover = load("res://assets/Menu/medium2.png")
	elif Game.mode == 1:
		$Control/VBoxContainer/map.texture_normal = load("res://assets/Menu/easy1.png")
		$Control/VBoxContainer/map.texture_hover = load("res://assets/Menu/easy2.png")


var start_button_hover = false

func on_start_click():
	$Control.mouse_behavior_recursive = Control.MouseBehaviorRecursive.MOUSE_BEHAVIOR_DISABLED
	$"clicksound-stream".play()
	var tween = get_tree().create_tween()
	tween.tween_property($SceneTransitionRect, "modulate", Color.WHITE, 3.0).set_trans(Tween.TRANS_SINE)
	tween.play()
	await tween.finished
	$Control.visible = false
	Game.start_game()
	
	tween = get_tree().create_tween()
	tween.tween_property($SceneTransitionRect, "modulate", Color.TRANSPARENT, 1.0).set_trans(Tween.TRANS_SINE)
	tween.play()
	await tween.finished

	self.queue_free()

func on_map_click():
	if Game.mode ==  1:
		Game.mode = 0
		$Control/VBoxContainer/map.texture_normal = load("res://assets/Menu/medium1.png")
		$Control/VBoxContainer/map.texture_hover = load("res://assets/Menu/medium2.png")
	elif Game.mode == 0:
		Game.mode = 1
		$Control/VBoxContainer/map.texture_normal = load("res://assets/Menu/easy1.png")
		$Control/VBoxContainer/map.texture_hover = load("res://assets/Menu/easy2.png")




func on_quit_click():
	get_tree().quit()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
