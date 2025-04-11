extends CharacterBody2D


@export var SPEED = 100.0
@export var StartDirection = 4
#1 - right
#2 - down
#3 - left
#4 - up
# Get the gravity from the project settings to be synced with RigidBody nodes.
@onready var anim = $AnimatedSprite2D
@onready var WallHit = $WallHit

func _ready():
	if StartDirection == 2:
		anim.play("down")
	if StartDirection == 4:
		anim.play("up")


func _physics_process(delta):
	velocity.x = 0
	velocity.y = 0
	# Add the gravity.
	if StartDirection == 2:
		velocity.y = 1 * SPEED
	elif StartDirection == 4:
		velocity.y = -1 * SPEED
	
	if is_on_ceiling():
		WallHit.start(.1);
		StartDirection = 2 #down
		anim.play("down")
	elif is_on_floor():
		WallHit.start(.1);
		StartDirection = 4 #up
		anim.play("up")
	
	
	move_and_slide()


func _on_timer_timeout():
	pass # Replace with function body.
