extends Node

@export var gold : int = 100
@export var wagons : Array[PathFollow3D] = []
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func add_wagon(wagon:PathFollow3D, root):
	wagon.progress = len(wagons) * -12 + wagons[0].progress if len(wagons) > 0 else 0
	wagons.append(wagon)
	root.add_child(wagon)
	
func load_wagons(root):
	for i in range(len(wagons)):
		var wagon = wagons[i]
		root.add_child(wagon)
		
