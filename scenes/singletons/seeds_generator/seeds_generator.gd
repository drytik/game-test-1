class_name SeedsGenerator
extends Node

#creating the singleton 

static var ref : SeedsGenerator

func _init() -> void:
	if ref == null:
		ref = self 
	else:
		queue_free()

#signal when the seeds are generated
signal produced

#defines how many "ticks" between seeds production 
var _cycle_duration : float = 2.0

#defines where is the progression status in the cycle
var _cycle_progression : float = 0.0

#how many seeds are produced
var _production : int = 1

func _ready() -> void:
	Game.ref.tick.connect(_on_timer_ticked)
	
func _on_timer_ticked() -> void: 
	_progress_cycle()
	
func _progress_cycle() -> void: 
	_cycle_progression += 1.0
	
	if _cycle_progression >= _cycle_duration:
		_generate()
		_cycle_progression -= _cycle_duration
	
func _generate() -> void: 
	Game.ref.data.resources.seeds += _production
	produced.emit()
