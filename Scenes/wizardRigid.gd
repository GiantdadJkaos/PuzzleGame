extends RigidBody2D

var velocity = Vector2.ZERO
var Speed = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += 50
	if Input.is_action_pressed("ui_left"):
		velocity.x += -50
	if Input.is_action_pressed("ui_up"):
		velocity.y += -50
	if Input.is_action_pressed("ui_down"):
		velocity.y += 50
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * Speed
		
	position += velocity * delta
