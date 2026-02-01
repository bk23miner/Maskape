extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


var start_button_hover = false

func on_start_click():
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

func on_quit_click():
	get_tree().quit()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
