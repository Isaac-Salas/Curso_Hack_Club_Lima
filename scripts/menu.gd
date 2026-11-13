extends Control
class_name Menu
@export var siguiente_escena : PackedScene
@onready var play: Button = $VBoxContainer/Play
@onready var quit: Button = $VBoxContainer/Quit
signal cambio


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	play.pressed.connect(_on_play)
	quit.pressed.connect(_on_quit)

func _on_play():
	if siguiente_escena:
		get_tree().change_scene_to_packed(siguiente_escena)
		cambio.emit()

func _on_quit():
	get_tree().quit()
