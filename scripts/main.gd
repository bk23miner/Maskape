extends Node2D



# Called when the node enters the scene tree for the first time.

func _ready():
	
	#var scene = load("res://scenes/world1.tscn")
	#var instance = scene.instantiate()
	#add_child(instance)
	#print("hey")
	
	#var scene = load("res://scenes/world1.tscn")
	#var instance = scene.instantiate()
	#add_child(instance)
	var scene = load("res://scenes/menu.tscn")
	var instance = scene.instantiate()
	add_child(instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass



	

#func menu_load():
	#var children = get_children()
	#for child in children:
	#	child.free()
	#var scene = load("res://scenes/menu.tscn")
	#var instance = scene.instantiate()
	#add_child(instance)
