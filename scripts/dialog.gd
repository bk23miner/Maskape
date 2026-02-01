extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_dialog()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var timer = Timer

func start_dialog():
	get_tree().get_first_node_in_group("player").disable_input = true
	
	$Control/TextureRect/Label.text = "Where is this place...?"
	await get_tree().create_timer(3.5).timeout
	$Control/TextureRect/Label.text = "Where did I leave my mask…?"
	await get_tree().create_timer(3.5).timeout
	$Control/TextureRect/Label.text = "...only that I can’t leave without it..."
	await get_tree().create_timer(3.5).timeout
	$Control/TextureRect/Label.text = "The corridors feel familiar...\n...like they’ve been waiting for me..."
	await get_tree().create_timer(3.5).timeout
	$Control/TextureRect/Label.text = "If I want to escape, \nI’ll have to find the pieces..."
	await get_tree().create_timer(3.5).timeout
	$Control/TextureRect/Label.text = "...and face the truth\n why I felt the need to hide them..."
	await get_tree().create_timer(3.5).timeout
	$Control.hide()
	get_tree().get_first_node_in_group("player").disable_input = false
	
func dialog_submit_mask(pieces):
	if pieces==1:
		$Control.show()
		$Control/TextureRect/Label.text = "“The gnawing hunger subsides.”"
		await get_tree().create_timer(4.0).timeout
		$Control.hide()
	if pieces==2:
		$Control.show()
		$Control/TextureRect/Label.text = "“The mask calls out for its pieces,\nyou should follow”"
		await get_tree().create_timer(4.0).timeout
		$Control.hide()
	if pieces==3:
		$Control.show()
		$Control/TextureRect/Label.text = "“Your senses sharpen, \nyour eyes feel wide awake.”"
		await get_tree().create_timer(4.0).timeout
		$Control.hide()
	if pieces==4:
		$Control.show()
		$Control/TextureRect/Label.text = "“Your inner quarrel is silenced.”"
		await get_tree().create_timer(4.0).timeout
		$Control.hide()
	if pieces==5:
		$Control.show()
		$Control/TextureRect/Label.text = "“A warm inner joy fills you.”"
		await get_tree().create_timer(4.0).timeout
		$Control.hide()
	if pieces==6:
		$Control.show()
		$Control/TextureRect/Label.text = "“A deep calm washes over your mind."
		await get_tree().create_timer(5.0).timeout
		$Control.hide()
