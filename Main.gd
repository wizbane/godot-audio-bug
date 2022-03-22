extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var sfx = preload("res://AudioStreamPlayer.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	if Input.is_action_just_pressed("ui_accept"):
		print("Reload ----- ", get_instance_id())
		get_tree().reload_current_scene()
		
	if Input.is_action_just_pressed("ui_focus_next"):
		print("Add 50 AudioStreamPlayers ----- ")
		for i in range(50):
			var new_sfx = sfx.instance()
			add_child(new_sfx)
			
		
