extends Node

onready var player = $PlayerMovement
onready var playerrect = $PlayerMovement/MeshInstance
onready var timer = $Timer
onready var crate = $CratePickable
onready var ice_cream = $IceCreamPickup
onready var cheese = $CheesePickable
onready var carton = $CartonPickup
onready var sprinkles = $donutSprinklesPickup
onready var yogurt = $YogurtPickup
onready var butter = $ButterPickup
onready var penalty = $Penalty/RoomCenter
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_Timer_timeout():
	playerrect.visible = false


func _on_PickableObject_body_entered(body):
	var crate_location = floor(crate.global_transform.origin.x)
	var cheese_location = floor(cheese.global_transform.origin.x)
	var ice_cream_location = floor(ice_cream.global_transform.origin.x)
	var carton_location = floor(carton.global_transform.origin.x)
	var sprinkles_location = floor(sprinkles.global_transform.origin.x)
	var yogurt_location = floor(yogurt.global_transform.origin.x)
	var butter_location = floor(butter.global_transform.origin.x)
	var penalty_location = penalty.global_transform.origin
	var player_location = player.global_transform.origin
	
	if (crate_location == cheese_location):
		player.global_translate(penalty_location)
	elif (crate_location == ice_cream_location):
		player.global_translate(penalty_location)
	elif (crate_location == carton_location):
		player.global_translate(penalty_location)
	elif (crate_location == sprinkles_location):
		player.global_translate(penalty_location)
	elif (crate_location == yogurt_location):
		player.global_translate(penalty_location)
	elif (crate_location == butter_location):
		player.global_translate(penalty_location)
