extends Node

onready var player = $PlayerMovement
onready var playerrect = $PlayerMovement/MeshInstance
onready var timer = $Timer
onready var crate = $CratePickable
onready var ice_cream = $IceCreamPickup
onready var ice_cream2 = $IceCreamPickup2
onready var ice_cream3 = $IceCreamPickup3
onready var cheese = $CheesePickable
onready var cheese2 = $CheesePickable2
onready var cheese3 = $CheesePickable3
onready var carton = $CartonPickup
onready var carton2 = $CartonPickup2
onready var carton3 = $CartonPickup3
onready var donut = $donutPickup
onready var donut2 = $donutPickup2
onready var sprinkles = $donutSprinklesPickup
onready var sprinkles2 = $donutSprinklesPickup2
onready var yogurt = $YogurtPickup
onready var yogurt2 = $YogurtPickup2
onready var yogurt3 = $YogurtPickup3
onready var butter = $ButterPickup
onready var butter2 = $ButterPickup2
onready var butter3 = $ButterPickup3
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
	var cheese_location2 = floor(cheese2.global_transform.origin.x)
	var cheese_location3 = floor(cheese3.global_transform.origin.x)
	var ice_cream_location = floor(ice_cream.global_transform.origin.x)
	var ice_cream_location2 = floor(ice_cream2.global_transform.origin.x)
	var ice_cream_location3 = floor(ice_cream3.global_transform.origin.x)
	var carton_location = floor(carton.global_transform.origin.x)
	var carton_location2 = floor(carton2.global_transform.origin.x)
	var carton_location3 = floor(carton3.global_transform.origin.x)
	var sprinkles_location = floor(sprinkles.global_transform.origin.x)
	var sprinkles_location2 = floor(sprinkles2.global_transform.origin.x)
	var donut_location = floor(donut.global_transform.origin.x)
	var donut_location2 = floor(donut2.global_transform.origin.x)
	var yogurt_location = floor(yogurt.global_transform.origin.x)
	var yogurt_location2 = floor(yogurt2.global_transform.origin.x)
	var yogurt_location3 = floor(yogurt3.global_transform.origin.x)
	var butter_location = floor(butter.global_transform.origin.x)
	var butter_location2 = floor(butter2.global_transform.origin.x)
	var butter_location3 = floor(butter3.global_transform.origin.x)
	var penalty_location = penalty.global_transform.origin
	var player_location = player.global_transform.origin
	
	if (crate_location == cheese_location):
		player.global_translate(penalty_location)
	elif (crate_location == cheese_location2):
		player.global_translate(penalty_location)
	elif (crate_location == cheese_location3):
		player.global_translate(penalty_location)
	elif (crate_location == ice_cream_location):
		player.global_translate(penalty_location)
	elif (crate_location == ice_cream_location2):
		player.global_translate(penalty_location)
	elif (crate_location == ice_cream_location3):
		player.global_translate(penalty_location)
	elif (crate_location == carton_location):
		player.global_translate(penalty_location)
	elif (crate_location == carton_location2):
		player.global_translate(penalty_location)
	elif (crate_location == carton_location3):
		player.global_translate(penalty_location)
	elif (crate_location == sprinkles_location):
		player.global_translate(penalty_location)
	elif (crate_location == sprinkles_location2):
		player.global_translate(penalty_location)
	elif (crate_location == donut_location):
		player.global_translate(penalty_location)
	elif (crate_location == donut_location2):
		player.global_translate(penalty_location)
	elif (crate_location == yogurt_location):
		player.global_translate(penalty_location)
	elif (crate_location == yogurt_location2):
		player.global_translate(penalty_location)
	elif (crate_location == yogurt_location3):
		player.global_translate(penalty_location)
	elif (crate_location == butter_location):
		player.global_translate(penalty_location)
	elif (crate_location == butter_location2):
		player.global_translate(penalty_location)
	elif (crate_location == butter_location3):
		player.global_translate(penalty_location)
