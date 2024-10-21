extends Node3D

@export var rail : Path3D
@export var train_controller : Node
@export var locomotive : PackedScene
@export var player : PackedScene
@export var destiny : String = "Cidade 1"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var locomotive_instance = locomotive.instantiate()
	locomotive_instance.player.enable_player()
	GameController.add_wagon(locomotive_instance, rail)
	train_controller.speed = 10
	
