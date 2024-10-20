extends Node

@export var path : Path3D
@export_range(0, 150) var speed : float = 10
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if speed > 0:
		speed -= speed / 10 * delta
	for wagon in path.get_children().filter(func(element): return element is PathFollow3D):
		wagon.speed = speed
