extends Area

onready var World = get_node("/root/world")

func _on_front_door_body_entered(body):
	if World.Keys == 3:
		get_tree().quit()