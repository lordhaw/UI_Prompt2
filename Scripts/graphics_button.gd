extends Button



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(startGraphicsScreen)


func startGraphicsScreen():
	
	Global.graphics_pressed.emit()