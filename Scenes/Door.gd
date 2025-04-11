extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_button_off():
	$DoorOff.visible = false
	$DoorOn.visible = true
	$StaticBody2D/CollisionShape2D.set_deferred("disabled", false)


func _on_button_button_on():
	$DoorOff.visible = true
	$DoorOn.visible = false
	$StaticBody2D/CollisionShape2D.set_deferred("disabled", true)


func _on_button_of_button_on():
	$DoorOff.visible = true
	$DoorOn.visible = false
	$StaticBody2D/CollisionShape2D.set_deferred("disabled", true)


func _on_button_of_button_off():
	$DoorOff.visible = false
	$DoorOn.visible = true
	$StaticBody2D/CollisionShape2D.set_deferred("disabled", false)


func _on_button_r_button_on():
	$DoorOff.visible = true
	$DoorOn.visible = false
	$StaticBody2D/CollisionShape2D.set_deferred("disabled", true)


func _on_button_r_button_off():
	$DoorOff.visible = true
	$DoorOn.visible = false
	$StaticBody2D/CollisionShape2D.set_deferred("disabled", true)
