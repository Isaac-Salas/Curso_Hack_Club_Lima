extends Area2D
class_name VidaExtra
@export var hp : int = 1


func _ready() -> void:
	body_entered.connect(_agarrado_por_jugador)


func _agarrado_por_jugador(body:Node2D):
	if body is JugadorPlatformer:
		self.queue_free()
