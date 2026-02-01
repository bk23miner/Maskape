extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_dialog()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var timer = Timer

func start_dialog():
	$VBoxContainer3/Label.text = "lidpoohpfvbcn"
	await get_tree().create_timer(7.0).timeout
	$VBoxContainer3/Label.text = "sdjkjjajkshbjsbndjab"
	await get_tree().create_timer(7.0).timeout
	$VBoxContainer3/Label.text = "dfbjlkkcvpoboin"
	await get_tree().create_timer(7.0).timeout
	$VBoxContainer3/Label.text = "oooooo"
	await get_tree().create_timer(7.0).timeout
	#self.queue_free()

func dialog_submit_mask(index):
	pass
