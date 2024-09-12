extends Label

#@onready var power_label = $PowerLabel  
@onready var power_label = $ParentNode/Ball/PowerLabel

func _ready() -> void:
		power_label.text = "Power: " + str(strength)
