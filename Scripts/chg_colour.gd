extends Node

@onready var bg_colour = get_node(self.get_path())
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(bg_colour.color)
	bg_colour.color=Color8(Global.r_value, Global.g_value, Global.b_value, 255)
