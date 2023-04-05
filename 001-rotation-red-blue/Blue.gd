extends MeshInstance3D

var red: Node3D = null
var d = 0
var pos: Vector3 = self.position

func _ready() -> void:
	red = get_node('/root/Node3D/Red')
	# self.position = self.position.rotated(Vector3.UP, PI / 2)
	# print(self.position)


func _process(delta: float) -> void:
	self.position = pos.rotated(red.basis.y, d)
	self.look_at(red.position)
	d += delta
	if d >= 2 * PI:
		d -= 2 * PI
