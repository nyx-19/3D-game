extends Spatial

var Keys = 0
var time_remaining = 120
onready var Remaining = $HUD/Remaining

func _unhandled_input(event):
	if Input.is_action_pressed("quit"):
		get_tree().quit()

func increase_Keys(points):
	Keys += points
	$HUD/Keys.text = str(Keys)
	

func _on_countdown_timeout():
	time_remaining -= 1
	if time_remaining <= 0:
		get_tree().change_scene("res://Scenes/GameOver.tscn")
	else:
		var m = time_remaining / 60
		var s = time_remaining % 60
		Remaining.text = str(m) + ":" + str(s)