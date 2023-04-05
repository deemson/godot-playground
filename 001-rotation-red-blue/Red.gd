extends MeshInstance3D

var d = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.position.z = sin(d)
	if sin(d) != 0:
		self.look_at(-Vector3.FORWARD * 2 * sign(cos(d)))
	d += 2 * delta
	if d >= 2 * PI:
		d -= 2 * PI
