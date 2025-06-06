extends Area2D

signal ButtonOn
signal ButtonOff

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	$ButtonOff.visible = false
	$ButtonOn.visible = true
	ButtonOn.emit()

func _on_area_exited(area):
	$ButtonOff.visible = true
	$ButtonOn.visible = false
	ButtonOff.emit()
