extends Node

@onready var node2 = get_parent().get_node("NodeTwo")

func _ready():
	await get_tree().process_frame
	beginRound()

func beginRound():
	for i in range(3):
		node2.beginNewTurn.rpc()
		print("waiting for turn to end")
		await node2.beginNextTurn
