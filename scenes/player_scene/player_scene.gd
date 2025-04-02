class_name Player
extends Area2D

var speed : float = 300.0 
@onready var camera : Camera2D = $Camera2D

func _ready() -> void:
	camera.make_current()
	camera.zoom = Vector2(1, 1)
	
func _process(delta: float) -> void:
	var direction : Vector2 = Input.get_vector("left", "right", "up", "down")
	position += direction * speed * delta
