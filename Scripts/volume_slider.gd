extends HSlider

#@onready var volume_slider = get_node("/root/Main UI Screen/AudioBGColorRect/Main VBoxContainer/Controls VBoxContainer/SliderHBoxContainer/VolumeSlider")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	self.value= Global.audio_level
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(self.value_changed):
		Global.audio_level = self.value
		Global.volume_changed.emit()
		
