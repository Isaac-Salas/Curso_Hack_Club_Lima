extends CharacterBody2D
class_name Jugador
@export var velocidad : int = 200


func _ready() -> void:
	pass

func _physics_process(delta: float) -> void: #Cada fotograma
	var direccion_x = Input.get_axis("izquierda","derecha")
	var direccion_y = Input.get_axis("arriba", "abajo")
	velocity += Vector2(direccion_x,direccion_y) * velocidad * delta
	#print([direccion_x, direccion_y])
	#if not is_on_floor():
		#velocity += get_gravity()
	move_and_slide()

func _input(event: InputEvent) -> void: #Cada evento de input
	pass

func funcion(variable, variable2 = 1): # Funcion con argumentos
	for i in variable:
		print(i)
	print(variable2)
