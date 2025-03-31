class_name Player
extends Area2D

var speed : float = 300.0 
@onready var camera : Camera2D = $Camera2D

func _ready() -> void:
	camera.make_current()
	camera.position_smoothing_enabled = false
	camera.position_smoothing_speed = 10.0
	camera.zoom = Vector2(2, 2)
	
	var viewport : Viewport = get_viewport()
	camera.limit_left = 0
	camera.limit_right = viewport.size.x
	camera.limit_top = 0
	camera.limit_bottom = viewport.size.y
	
func _process(delta: float) -> void:
	var direction : Vector2 = Input.get_vector("left", "right", "up", "down")
	position += direction * speed * delta
