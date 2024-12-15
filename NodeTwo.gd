extends Node3D

signal beginNextTurn

@onready var node1 = get_parent().get_node("NodeOne")
@onready var node3 = get_parent().get_node("NodeThree")

@rpc("any_peer", "call_local", "reliable")
func beginNewTurn() -> void:
		node3.takeTurn() #empire points to the node(s) of Script Three

func endTurn():
	print(is_instance_valid(node1))
	emit_signal("beginNextTurn")

func manualEndTurn():
	endTurn()
