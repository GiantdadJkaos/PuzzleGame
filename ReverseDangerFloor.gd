extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$FloorOn.visible = false
	$FloorOff.visible = true
	$Lava/CollisionShape2D.set_deferred("disabled", true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_button_off():
	$FloorOn.visible = false
	$FloorOff.visible = true
	$Lava/CollisionShape2D.set_deferred("disabled", true)


func _on_button_button_on():
	$FloorOn.visible = true
	$FloorOff.visible = false
	$Lava/CollisionShape2D.set_deferred("disabled", false)
