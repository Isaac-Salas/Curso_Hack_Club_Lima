extends Area2D
@onready var item: RigidBody2D = $".."



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	item.body_entered.connect(_cuerpo_entrante_al_item)
	body_entered.connect(_cuerpo_entrante)


func _cuerpo_entrante(body: Node2D) -> void:
	if body is JugadorPlatformer:
		print("Esta chocando con jugador")

func _cuerpo_entrante_al_item(body:Node2D) -> void:
	if body is JugadorPlatformer:
		print("El item tambien choco con el jugador")
