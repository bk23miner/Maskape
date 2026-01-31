extends Button




func _pressed():
	Game.start_game()
	$"..".queue_free()
