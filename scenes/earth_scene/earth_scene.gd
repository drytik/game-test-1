extends Control

@onready var label : Label = $MarginContainer/TabContainer/CityMenu/TradePanel/VBoxContainer/MarginContainer/VBoxContainer/MarginContainer3/HBoxContainer/MarginContainer4/RichTextLabel

func _ready() -> void:
	SeedsGenerator.ref.produced.connect(_update_label)
	label.text = "0"
	
func _update_label() -> void: 
	label.text = "%s" %Game.ref.data.resources.seeds
