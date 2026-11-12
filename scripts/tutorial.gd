extends Node2D
#Esto de aqui son variables
var numero : int = 10 #entero
var flotante : float = 1.1 #flotante
var booleano : bool = false #booleano si/no
var texto : String = "Texto" #Almacena texto
var diccionario : Dictionary = {"Llave" : "Valor", "manzana" : 100, 1 : "texto"}
var lista : Array = [1, 2, 3.1,4.5, "Cinco", "Seis"]


func _ready() -> void: #Se ejecuta al iniciar una escena
	#Comparativas / Condicional if
	if numero != 1:
		print("El numero es diferente de 1")
	if numero == 1:
		print("Numero es igual a 1")
	if numero < 1:
		print("Numero es menor a 1")
	if numero > 1:
		print("Numero es mayor a 1")
	if numero <= 1:
		print("Numero es menor o igual a 1")
	#Ciclo for
	for letra in texto: #Iteracion
		print(letra)
	for num in numero:
		print(num)
	for objeto in lista:
		print(objeto)
	
	#Ciclo while:
	while numero <= 20: #Mientras numero sea diferente de 20...
		print("Numero es: ", numero)
		numero += 1 #numero = numero + 1
	

func _process(delta: float) -> void: #Ejecutarse cada frame/tick del motor
	pass
