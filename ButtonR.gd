extends Area2D

signal ButtonOn
signal ButtonOff

# Called when the node enters the scene tree for the first time.
func _ready():
	$ButtonOff.visible = false
	$ButtonOn.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	$ButtonOff.visible = false
	$ButtonOn.visible = true
	ButtonOn.emit()
	$CollisionShape2D.set_deferred("disabled", true)

func _on_area_exited(area):
	pass


func _on_button_button_on():
	$ButtonOff.visible = true
	$ButtonOn.visible = false
	ButtonOff.emit()
	$CollisionShape2D.set_deferred("disabled", false)
