extends Spatial


onready var matPlanksNew = preload("res://assets/Low_Poly_Barn/Low Poly Barn/Planks004_2K_AmbientOcclusion.jpg")
onready var matPlanksOld = preload("res://assets/Low_Poly_Barn/Low Poly Barn/Planks_004_Old.jpg")



func _ready():
	$RootNode/Model/Group1/Group2/Mesh1.set_surface_material(1, matPlanksNew)
	$RootNode/Model/Group1/Group3/Mesh2.set_surface_material(1, matPlanksNew)
	$RootNode/Model/Group1/Difference/Mesh3.set_surface_material(1, matPlanksNew)
	$RootNode/Model/Group1/Group4/Mesh4.set_surface_material(1, matPlanksNew)
	$RootNode/Model/Group1/Group5/Mesh5.set_surface_material(1, matPlanksNew)
	$RootNode/Model/Group1/Group6/Mesh6.set_surface_material(1, matPlanksNew)
	$RootNode/Model/Group1/Group7/Mesh7.set_surface_material(1, matPlanksNew)
	$RootNode/Model/Group1/Group8/Mesh8.set_surface_material(1, matPlanksNew)
	$RootNode/Model/Group1/Group9/Mesh9.set_surface_material(1, matPlanksNew)
	$RootNode/Model/Group1/Group10/Mesh10.set_surface_material(1, matPlanksNew)
	$RootNode/Model/Group1/Group11/Mesh11.set_surface_material(1, matPlanksNew)
	$RootNode/Model/Group1/Group12/Mesh12.set_surface_material(1, matPlanksNew)
	$RootNode/Model/Group1/Group13/Mesh13.set_surface_material(1, matPlanksNew)
	$RootNode/Model/Group1/Group14/Mesh14.set_surface_material(1, matPlanksNew)
	$RootNode/Model/Group1/Group15/Mesh15.set_surface_material(1, matPlanksNew)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
