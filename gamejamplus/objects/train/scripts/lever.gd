extends Area3D

@onready var lever_light = $"Lever_light"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mouse_entered() -> void:
	lever_light.visible = true


func _on_mouse_exited() -> void:
	lever_light.visible = false
