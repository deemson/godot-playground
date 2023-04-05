extends MeshInstance3D


func _ready() -> void:
	print(self.transform)
	self.transform = self.transform.rotated_local(Vector3.RIGHT, deg_to_rad(90))
	print(self.transform)


func _process(delta: float) -> void:
	pass
