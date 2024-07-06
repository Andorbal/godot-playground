extends MeshInstance3D

@export_range(0,1) var max_height_scale: float
var time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	mesh.material.set_shader_parameter("height_scale", max_height_scale)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta
	var height = ((sin(time) + 1.0) / 2.0) * max_height_scale;
	mesh.material.set_shader_parameter("height_scale", height)
