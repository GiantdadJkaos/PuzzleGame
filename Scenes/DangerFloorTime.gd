extends Area2D

signal hurt
@export var on = true
@export var time = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.wait_time = time
	if not on:
		$FloorOn.visible = false
		$FloorOff.visible = true
		$Lava/CollisionShape2D.set_deferred("disabled", true)
	else:
		$FloorOn.visible = true
		$FloorOff.visible = false
		$Lava/CollisionShape2D.set_deferred("disabled", false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_lava_area_entered(area):
	hurt.emit()

func _on_timer_timeout():
	if on:
		$FloorOn.visible = false
		$FloorOff.visible = true
		$Lava/CollisionShape2D.set_deferred("disabled", true)
		on = false
	else:
		$FloorOn.visible = true
		$FloorOff.visible = false
		$Lava/CollisionShape2D.set_deferred("disabled", false)
		on = true
