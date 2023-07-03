extends Area2D

onready var big_circle = $circulogrande
onready var small_circle = $circulogrande/circulopequeno

onready var max_distance = $CollisionShape2D.shape.radius

var touched = false

func _input(event):
	if event is InputEventScreenTouch:
		var distance = event.position.distance_to(big_circle.global_position)
		if not touched:
			if distance<max_distance:
				touched = true
			else:
				small_circle.position = Vector2(0,0)
				touched = false
				
func _process(delta: float) -> void:
	if touched:
		small_circle.global_position = get_global_mouse_position()
		small_circle.position = big_circle.position + (small_circle.position - big_circle.position).clamped(max_distance)
