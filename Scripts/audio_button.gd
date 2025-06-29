extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(startAudioScreen)
	


func startAudioScreen():
	Global.audio_pressed.emit()
