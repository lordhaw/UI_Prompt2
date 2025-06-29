extends Button

@onready var volume_slider = get_node("/root/Main UI Screen/AudioBGColorRect/Main VBoxContainer/Controls VBoxContainer/SliderHBoxContainer/VolumeSlider")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(self.button_pressed):
		volume_slider.value = 0
		Global.volume_changed.emit()
