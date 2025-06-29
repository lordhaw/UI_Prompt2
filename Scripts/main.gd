extends Control

# Declare Variables
var settingsScene: PackedScene = load("res://Scenes/settings.tscn")
var audioScene: PackedScene = load("res://Scenes/audio.tscn")
var graphicsScene: PackedScene = load("res://Scenes/graphics.tscn")
var music_player: AudioStreamPlayer
var newSettings
var newAudio
var newGraphics

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	changeScene(settingsScene)
	Global.audio_pressed.connect(_on_audio_pressed)
	Global.graphics_pressed.connect(_on_graphics_pressed)
	Global.back_pressed.connect(_on_back_pressed)
	Global.volume_changed.connect(_on_volume_changed)

	audio_setup()
	music_player.play()
	
		
func changeScene(new_scene):
	var noderoot = get_tree().get_root()
	var new_instance = new_scene.instantiate()
	noderoot.get_child(1).add_child(new_instance)
	
func _on_audio_pressed():
	changeScene(audioScene)


func _on_graphics_pressed():
	changeScene(graphicsScene)

	
func _on_back_pressed():
	changeScene(settingsScene)
	
func _on_volume_changed():
	music_player.volume_db=Global.audio_level
	
func audio_setup():
	music_player=AudioStreamPlayer.new()
	add_child(music_player)
	var audio_stream=load("res://Sounds/HighEnergyGM.ogg")
	music_player.stream=audio_stream
	

	
