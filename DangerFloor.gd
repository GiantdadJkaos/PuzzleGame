extends Area2D

signal hurt

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_lava_area_entered(area):
	hurt.emit()


func _on_button_button_off():
	$FloorOn.visible = true
	$FloorOff.visible = false
	$Lava/CollisionShape2D.set_deferred("disabled", false)


func _on_button_button_on():
	$FloorOn.visible = false
	$FloorOff.visible = true
	$Lava/CollisionShape2D.set_deferred("disabled", true)
