extends Control

@onready var seeds : int = Game.ref.data.resources.seeds

func _ready() -> void:
	($Button as Button).pressed.connect(_on_button_pressed)
	
func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void: 
		seeds += 5
		print(seeds)
		$Label.text = "Seeds: %s" %seeds
