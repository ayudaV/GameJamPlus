extends Control
var music_bus = AudioServer.get_bus_index(("Music"))
@export var play_scene : PackedScene
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_disable_sound_button_up() -> void:
	AudioServer.set_bus_mute(music_bus, not AudioServer.is_bus_mute(music_bus))


func _on_button_quit_pressed() -> void:
	get_tree().quit()


func _on_button_play_button_up() -> void:
	get_tree().change_scene_to_packed(play_scene)
