extends Button



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(startMainScreen)


func startMainScreen():
	
	Global.back_pressed.emit()