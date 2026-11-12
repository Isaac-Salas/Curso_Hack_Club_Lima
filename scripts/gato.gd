extends Animal
class_name Gato

func maullar():
	print(nombre, "acaba de maullar")

func _ready() -> void:
	hacer_ruido()
	maullar()
