extends PathFollow3D

@export var animationPLayer : AnimationPlayer
@export var player : CharacterBody3D
@export_range(0, 150) var speed: float = 0
const default_anim_speed = 2.216470588
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animationPLayer.play("loop_move")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	progress += speed * delta
	animationPLayer.speed_scale = speed / default_anim_speed
