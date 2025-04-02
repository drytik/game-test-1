extends Control

@onready var player : Area2D
@onready var subviewport : SubViewport = $SubViewportContainer/SubViewport
@onready var svcontainer : SubViewportContainer = $SubViewportContainer

func _ready() -> void:
	subviewport.size = Vector2 (744, 617)
	svcontainer.anchor_right = 1.0
	svcontainer.anchor_bottom = 1.0
	svcontainer.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	svcontainer.size_flags_vertical = Control.SIZE_EXPAND_FILL
	
