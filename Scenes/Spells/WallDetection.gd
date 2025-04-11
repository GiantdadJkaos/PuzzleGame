extends CharacterBody2D

signal Wall

func _physics_process(delta):
	if is_on_wall() or is_on_ceiling() or is_on_floor():
		Wall.emit()
