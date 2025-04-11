extends CharacterBody2D

signal win
signal hurt

var SPEED = 200
@onready var anim = $AnimatedSprite2D

var direction = "left"
var projectileSpeed = Vector2.ZERO

#Spells
@export var fireBallScene: PackedScene
var fireBall



# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var directionX = Input.get_axis("ui_left", "ui_right")
	var directionY = Input.get_axis("ui_down", "ui_up")
	if directionX:
		velocity.x = directionX * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if directionY:
		velocity.y = directionY * -SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	if velocity.x != 0 or velocity.y != 0:
		anim.play('walk')
	else:
		anim.play("default")
	
	if Input.is_action_just_pressed("ui_right"):
		anim.flip_h = true
		direction = "right"
	elif Input.is_action_just_pressed("ui_left"):
		anim.flip_h = false
		direction = "left"
	elif Input.is_action_just_pressed("ui_down"):
		direction = "down"
	elif Input.is_action_just_pressed("ui_up"):
		direction = "up"
		
	if Input.is_action_just_pressed("ui_accept"):
		fireFireBall()
	
	move_and_slide()


func _on_hurt_detection_area_entered(area):
	hurt.emit()


func _on_win_detection_area_entered(area):
	win.emit()

func addSpell(spellType):
	if spellType == "fireBall":
		fireBall.fireballAmount+=1
	

func fireFireBall():
	getDirection()
	fireBall = fireBallScene.instantiate()
	if fireBall.fireBallAmount > 0:
		fireBall.fireBallAmount-=1
		fireBall.startingPosition.x = position.x
		fireBall.startingPosition.y = position.y + 7
		fireBall.projectileSpeed.x = projectileSpeed.x
		fireBall.projectileSpeed.y = projectileSpeed.y
		get_tree().current_scene.add_child(fireBall)
	
	
func getDirection():
	projectileSpeed.x = 0
	projectileSpeed.y = 0
	if direction == "right":
		projectileSpeed.x = 1
	elif direction == "left":
		projectileSpeed.x = -1
	elif direction == "up":
		projectileSpeed.y = -1
	elif direction == "down":
		projectileSpeed.y = 1
