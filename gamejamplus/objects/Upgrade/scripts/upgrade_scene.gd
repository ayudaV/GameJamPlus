extends Node3D

@export var coal_wagon : PackedScene
@export var soil_wagon : PackedScene
@export var iron_wagon : PackedScene
@export var animal_wagon : PackedScene
@export var fuel_wagon : PackedScene
@export var locomotive : PackedScene

@export var rail : Path3D
@export var train_controller : Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	instantiate_wagon(locomotive)
	GameController.load_wagons(rail)
	train_controller.speed = 10



func instantiate_wagon(wagon : PackedScene):
	var wagon_instance = wagon.instantiate()
	GameController.add_wagon(wagon_instance, rail)

func _on_button_button_up() -> void:
	print("vagão de carvão adicionado") # Replace with function body.
	instantiate_wagon(coal_wagon)


func _on_button_iron_wagon_button_up() -> void:
	print("vagão de ferro adicionado")
	instantiate_wagon(iron_wagon)


func _on_button_soy_wagon_button_up() -> void:
	print("vagão de soja adicionado")
	instantiate_wagon(coal_wagon)


func _on_button_fuel_wagon_button_up() -> void:
	print("vagão de combustivel adicionado")
	instantiate_wagon(fuel_wagon)


func _on_button_animals_wagon_button_up() -> void:
	print("vagão de animais adicionado")
	instantiate_wagon(animal_wagon)


func _on_timer_timeout() -> void:
	pass
