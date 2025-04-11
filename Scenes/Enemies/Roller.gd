extends CharacterBody2D


@export var SPEED = 100.0
@export var StartDirection = 1
#1 - right
#2 - down
#3 - left
#4 - up
# Get the gravity from the project settings to be synced with RigidBody nodes.
@onready var anim = $AnimatedSprite2D

func _ready():
	if StartDirection == 1:
		anim.play("right")
	if StartDirection == 2:
		anim.play("down")
	if StartDirection == 3:
		anim.play("left")
	if StartDirection == 4:
		anim.play("up")


func _physics_process(delta):
	velocity.x = 0
	velocity.y = 0
	# Add the gravity.
	if StartDirection == 1:
		velocity.x = 1 * SPEED
	elif StartDirection == 2:
		velocity.y = 1 * SPEED
	
	elif StartDirection == 3:
		velocity.x = -1 * SPEED
	elif StartDirection == 4:
		velocity.y = -1 * SPEED
	
	if is_on_wall() and StartDirection == 3:
		StartDirection = 4 #up
		anim.play("up")
	elif is_on_wall() and StartDirection != 4:
		StartDirection = 2 #down
		anim.play("down")
	if is_on_floor() and not is_on_wall():
		StartDirection = 3 #left
		anim.play("left")
	elif is_on_ceiling():
		StartDirection = 1 #right
		anim.play("right")
	
	
	
	move_and_slide()
