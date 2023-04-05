extends MeshInstance3D

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("move_forward"):
		self.transform.origin.z -= 0.5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass
