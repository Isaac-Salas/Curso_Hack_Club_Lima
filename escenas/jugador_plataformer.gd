extends CharacterBody2D
class_name JugadorPlatformer

@export var SPEED = 300.0
@export var JUMP_VELOCITY = -400.0
@export var vida : int = 10
@onready var detector_bomba: Area2D = $DetectorBomba
@onready var textura: AnimatedSprite2D = $Textura
@onready var timer: Timer = $Textura/Timer
@onready var golpe: AudioStreamPlayer2D = $Golpe

const GOLPE = preload("uid://bcwo2til0jagu")

func _ready() -> void:
	detector_bomba.body_entered.connect(_bomba_entro_a_jugador)
	detector_bomba.area_entered.connect(_vida_extra)
	

func _vida_extra(area : Area2D):
	if area is VidaExtra:
		print("Toco vida")
		_ganar_vida(area.hp)

func _bomba_entro_a_jugador(body:Node2D):
	if body is Bomba:
		
		_quitar_vida(body.daño)
		textura.play("golpe")
		timer.start(0.5)
		await timer.timeout
		textura.play("idle")
		golpe.stream = GOLPE
		golpe.play()
		

func _quitar_vida(daño : int):
	vida -= daño

func _ganar_vida(hp : int):
	vida += hp

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("saltar") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("izquierda", "derecha")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
