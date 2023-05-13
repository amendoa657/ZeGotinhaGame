extends CanvasLayer

func _ready():
	$transition_fx.interpolate_property($ColorRect, "progress", 0.0, 1.0, 2.0, Tween.TRANS_QUINT, Tween.EASE_IN_OUT)
	$transition_fx.start()
