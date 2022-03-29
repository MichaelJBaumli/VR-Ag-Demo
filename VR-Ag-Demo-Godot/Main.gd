extends Node

onready var player = $PlayerMovement
onready var playerrect = $PlayerMovement/MeshInstance
onready var timer = $Timer
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_area_entered(area):
	#black out:::
	playerrect.visible = true
	timer.start()
	match area.type:
		"cheese":# For cheese, carton, butter and icecream, (and later yogurt) will change scenes here depending on what object enters
			pass
		"carton":
			pass
		"butter":
			pass
		"icecream":
			pass
		"crate":
			#DO NOTING DONT CHANGE SCENE THIS ONLY NEEDED A TYPE BECAUSE IT IS PICKABLE
			pass



func _on_Timer_timeout():
	playerrect.visible = false
