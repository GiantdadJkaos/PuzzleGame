extends Area2D

var SpeedX = 0
var SpeedY = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += SpeedY


func _on_down_area_entered(area):
	SpeedY = 5


func _on_down_area_exited(area):
	SpeedY = 0
