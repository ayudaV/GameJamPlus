extends Node3D

@export var rail : Path3D
@export var train_controller : Node
@export var locomotive : PackedScene
@export var player : PackedScene
@export var destiny : String = "Cidade 1"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var locomotive_instance = locomotive.instantiate()
	var player_instance = player.instantiate()
	locomotive_instance.add_child(player_instance)
	GameController.load_wagons(rail)
	train_controller.speed = 30
	
