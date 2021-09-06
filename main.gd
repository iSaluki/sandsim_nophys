extends Node2D

onready var sand = preload("sand.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if Input.is_action_just_pressed("left_click"):
		var mousePos = get_global_mouse_position()
		var sandInst = sand.instance()
		sandInst.position = mousePos
		self.add_child(sandInst)
