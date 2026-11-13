extends Label
@onready var timer: Timer = $"../Timer"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.start(2.0)
	var test: int = 1
	while test <= 10:
		print(test)
		test += 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.text = str(int(timer.time_left))
