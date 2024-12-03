extends Node3D
@onready var jewel_container: Node3D = $mesh_offset/jewel
@export var jewel_material : StandardMaterial3D
@export var activated_color : Color
@onready var jewel_mesh: MeshInstance3D = $mesh_offset/jewel/jewel
var time := 0.0
var touched : bool

# Called when the node enters the scene tree for the first time.

func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.has_method("reached_checkpoint"):
		body.reached_checkpoint(global_position)
		touched = true
