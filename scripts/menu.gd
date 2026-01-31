extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


var start_button_hover = false

func on_start_click():
	self.queue_free()
	Game.start_game()
	
	
	
	

func on_quit_click():
	get_tree().quit()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
