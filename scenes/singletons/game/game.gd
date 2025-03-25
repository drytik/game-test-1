class_name Game
extends Node

#creating the singleton

static var ref : Game 

func _init() -> void:
	if not ref: 
		ref = self 
	else: 
		queue_free()

var data : Data = Data.new()
