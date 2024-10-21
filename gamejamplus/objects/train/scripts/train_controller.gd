extends Node

@export var path : Path3D
@export_range(0, 150) var speed : float = 10
@export var travel_percentage : float = 0
@export var upgrade_scene : PackedScene
var wagons : Array[Node]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await get_tree().create_timer(0.2).timeout
	wagons = path.get_children().filter(func(element): return element is PathFollow3D)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if len(wagons) == 0: return
	travel_percentage = wagons[0].progress_ratio
	if travel_percentage > 0.99:
		get_tree().change_scene_to_packed(upgrade_scene)
	for wagon in wagons:
		wagon.speed = speed
