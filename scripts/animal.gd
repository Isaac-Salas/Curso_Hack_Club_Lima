extends Node2D
class_name Animal

@export var nombre = "nombre"
@export var sonido = "sonido"

func hacer_ruido():
	print(nombre, " hizo: ", sonido)

func _ready() -> void:
	hacer_ruido()
