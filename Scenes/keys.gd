extends Label

func _ready():
 update_keys()

func update_keys():
 text = "keys: " + str(get_parent().keys)