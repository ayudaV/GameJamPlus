extends Node3D

@export var rail : Path3D
@export var train_controller : Node
@export var locomotive : PackedScene
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var locomotive_instance = locomotive.instantiate()
	GameController.add_wagon(locomotive_instance, rail)
	GameController.load_wagons(rail)
	train_controller.speed = 10
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
