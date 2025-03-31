class_name WaterGenerator
extends Node

#creating singleton

static var ref : WaterGenerator

func _init() -> void:
	if ref == null: 
		ref = self
	else: 
		queue_free()
		
signal produced

var _cycle_duration : float = 3
var _cycle_progression : float = 0
var _progression : int = 1

func _ready() -> void:
	Game.ref.tick.connect(_on_timer_ticked)

func _on_timer_ticked() -> void: 
	_progress_cycle()
	
func _progress_cycle() -> void: 
	_cycle_progression += _progression
	
	if _cycle_progression >= _cycle_duration:
		_generate()
		_cycle_progression -= _cycle_duration

func _generate() -> void: 
	Game.ref.data.resources.water += 1
	produced.emit()
