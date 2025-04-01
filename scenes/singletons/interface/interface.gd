class_name Interface
extends Control

#TODO MAKE SINGLETON, consider moving to TabContainer node

@onready var tab_container : TabContainer = $MarginContainer/HBoxContainer/TabContainer

func _ready() -> void:
	tab_container.tab_changed.connect(_on_tab_changed)
	
func _on_tab_changed(tab_idx : int) -> void: 
	var current_tab :  = tab_container.get_child(tab_idx)
	if current_tab.name == "MainScene":
		var player = current_tab.get_node("SubViewportContainer/SubViewport/World/PlayerScene")
		player.camera.make_current()
