extends Area

export var points = 1

onready var World = get_node("/root/world")

func _on_key_body_entered(body):
	World.increase_Keys(1)
	queue_free()
	

