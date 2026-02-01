extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


var start_button_hover = false

func on_start_click():
	$"clicksound-stream".play()
	Game.start_game()
	self.visible = false
	await $"clicksound-stream".finished
	self.queue_free()

func on_quit_click():
	get_tree().quit()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
