class_name Game
extends Node

#creating the singleton

static var ref : Game 

func _init() -> void:
	if ref == null: 
		ref = self 
	else: 
		queue_free()

#creating the timer signal
signal tick

#instantiating the data resource
var data : Data = Data.new()

func _on_timer_timeout() -> void:
	tick.emit()
