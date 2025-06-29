extends CheckBox

@onready var volume_slider = get_node("/root/Main UI Screen/AudioBGColorRect/Main VBoxContainer/Controls VBoxContainer/SliderHBoxContainer/VolumeSlider")
var previous_slider_value

# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	self.button_pressed= false
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(self.button_pressed):
		if(previous_slider_value == null):
			previous_slider_value = Global.audio_level
		Global.audio_level = -80
		volume_slider.value= -80
		volume_slider.editable = false		
		Global.volume_changed.emit()
		
	if(!self.button_pressed && !previous_slider_value == null):
		volume_slider.editable = true
		volume_slider.value = previous_slider_value
		Global.audio_level = previous_slider_value
		previous_slider_value = null
		Global.volume_changed.emit()
		
