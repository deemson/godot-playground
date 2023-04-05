extends Camera3D

@export var target: Node

var mouse_pos: Vector2 = Vector2.ZERO
var pivot: Node3D = null

func _ready() -> void:
	pivot = get_parent()
	mouse_pos = self.get_viewport().get_mouse_position()

func _process(delta: float) -> void:
	var new_mouse_pos = self.get_viewport().get_mouse_position()
	var speed = (new_mouse_pos - mouse_pos) / delta
	mouse_pos = new_mouse_pos
	pivot.rotate_object_local(Vector3.RIGHT, speed.y * 0.0005)
	pivot.rotate(Vector3.UP, speed.x * 0.0005)
