extends Control

@onready var player : Area2D
@onready var subviewport : SubViewport = $SubViewportContainer/SubViewport

func _ready() -> void:
	set_process_input(true)
	
func _input(event: InputEvent) -> void:
	if visible:
		subviewport.push_input(event.duplicate())
