extends Control

func _ready() -> void:
	($Button as Button).pressed.connect(_on_button_pressed)
	SeedsGenerator.ref.seed_generated.connect(_update_label)
	$Label.text = "Seeds : 0"

func _update_label() -> void: 
	$Label.text = "Seeds: %s" %Game.ref.data.resources.seeds
	
func _on_button_pressed() -> void: 
	Game.ref.data.resources.seeds += 5
	$Label.text = "Seeds: %s" %Game.ref.data.resources.seeds
		
