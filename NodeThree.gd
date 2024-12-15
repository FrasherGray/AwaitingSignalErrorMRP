extends Node3D

@onready var node2 = get_parent().get_node("NodeTwo")

var endManually: bool = true

func takeTurn():
	if endManually:
		pass
	else:
		node2.endTurn()
	endManually = not endManually
