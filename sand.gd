extends Sprite


var cellSize = 10


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _physics_process(delta):
	if !$Area2D/RayDown.is_colliding():
		self.global_translate(Vector2(0, cellSize))
	if !$Area2D/RayLeft.is_colliding():
		self.global_translate(Vector2(cellSize, cellSize))
	if !$Area2D/RayRight.is_colliding():
		self.global_translate(Vector2(-cellSize, cellSize))
