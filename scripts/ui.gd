extends Control

var jugador : JugadorPlatformer
@onready var vida: Label = $Vida

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_buscar_jugador()

func _buscar_jugador():
	jugador = get_tree().current_scene.find_child("Jugador")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if jugador:
		vida.text = str(jugador.vida)
