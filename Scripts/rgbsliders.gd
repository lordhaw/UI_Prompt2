extends VBoxContainer

@onready var graphics_rect = get_node("/root/Main UI Screen/Graphics BG ColorRect")
var default_r : float = 111
var default_g : float = 165
var default_b : float = 246

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$RSliderHBoxContainer/RSlider.value = Global.r_value
	$GSliderHBoxContainer/GSlider.value = Global.g_value
	$BSliderHBoxContainer/BSlider.value = Global.b_value


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if($RSliderHBoxContainer/RSlider.value_changed):
		Global.r_value = $RSliderHBoxContainer/RSlider.value
		graphics_rect.color=Color8(Global.r_value, Global.g_value, Global.b_value, 255)
	if($GSliderHBoxContainer/GSlider.value_changed):
		Global.g_value = $GSliderHBoxContainer/GSlider.value
		graphics_rect.color=Color8(Global.r_value, Global.g_value, Global.b_value, 255)
	if($BSliderHBoxContainer/BSlider.value_changed):
		Global.b_value = $BSliderHBoxContainer/BSlider.value
		graphics_rect.color=Color8(Global.r_value, Global.g_value, Global.b_value, 255)
	if($RSliderHBoxContainer/ResetButton.button_pressed):
		Global.r_value = default_r
		$RSliderHBoxContainer/RSlider.value = default_r
		graphics_rect.color=Color8(Global.r_value, Global.g_value, Global.b_value, 255)
	if($GSliderHBoxContainer/ResetButton.button_pressed):
		Global.g_value = default_g
		$GSliderHBoxContainer/GSlider.value = default_g
		graphics_rect.color=Color8(Global.r_value, Global.g_value, Global.b_value, 255)
	if($BSliderHBoxContainer/ResetButton.button_pressed):
		Global.b_value = default_b
		$BSliderHBoxContainer/BSlider.value = default_b
		graphics_rect.color=Color8(Global.r_value, Global.g_value, Global.b_value, 255)
