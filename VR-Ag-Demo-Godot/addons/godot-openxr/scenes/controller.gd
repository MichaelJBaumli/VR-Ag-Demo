extends ARVRController

signal activated
signal deactivated

var controller_velocity = Vector3.ZERO
var prior_controller_position = Vector3.ZERO
var prior_controller_velocities = []

var held_object = null
var held_object_data = {"mode":RigidBody.MODE_RIGID,"layer":1,"mask":1}
onready var grab_area = get_node("Area")
onready var grab_raycast = get_node("GrabCast")
var grab_mode = "AREA"
onready var grab_pos_node = get_node("Grab_Pos")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_is_active():
		if !visible:
			visible = true
			print("Activated " + name)
			emit_signal("activated")
	elif visible:
		visible = false
		print("Deactivated " + name)
		emit_signal("deactivated")

func _physics_process(delta):
	controller_velocity = Vector3.ZERO
	if prior_controller_velocities.size()>0:
		for vel in prior_controller_velocities:
			controller_velocity += vel
		controller_velocity = controller_velocity/prior_controller_velocities.size()
	var relative_controller_position = (global_transform.origin - prior_controller_position)
	controller_velocity += relative_controller_position
	prior_controller_velocities.append(relative_controller_position)
	prior_controller_position = global_transform.origin
	controller_velocity /= delta
	if prior_controller_velocities.size()>30:
		prior_controller_velocities.remove(0)

func _on_button_pressed_grab():
	if held_object == null:
		_pickup_rigidbody()
	else:
		_throw_rigidbody()

func _pickup_rigidbody():
	var rigid_body = null
	if grab_mode == "AREA":
		var bodies = grab_area.get_overlapping_bodies()
		if len(bodies) > 0:
			for body in bodies:
				if body is RigidBody:
					if !("NO_PICKUP" in body):
						rigid_body = body
						break
	elif grab_mode == "RAYCAST":
		grab_raycast.force_raycast_update()
		if grab_raycast.is_colliding():
			var body = grab_raycast.get_collider()
			if body is RigidBody:
				if !("NO_PICKUP" in body):
					rigid_body = body
	if rigid_body != null:
		held_object = rigid_body
		held_object_data["mode"] = held_object.mode
		held_object_data["layer"] = held_object.collision_layer
		held_object_data["mask"] = held_object.collision_mask
		held_object.mode = RigidBody.MODE_STATIC
		held_object.collision_layer = 0
		held_object.collision_mask = 0
		grab_raycast.visible = false
		if held_object is VR_Interactable_Rigidbody:
			held_object.controller = self
			held_object.picked_up()

func _throw_rigidbody():
	if held_object == null:
		return
	held_object.mode = held_object_data["mode"]
	held_object.collision_layer = held_object_data["layer"]
	held_object.collision_mask = held_object_data["mask"]
	held_object.apply_impulse(Vector3(0, 0, 0), controller_velocity)
	if held_object is VR_Interactable_Rigidbody:
		held_object.dropped()
		held_object.controller = null
	held_object = null
	if grab_mode == "RAYCAST":
		grab_raycast.visible = true
