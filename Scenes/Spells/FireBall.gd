extends Area2D


@export var startingPosition = Vector2.ZERO
@export var projectileSpeed = Vector2.ZERO
@export var fireBallSpeed = 10
@export var fireBallAmount = 0

# Get the gravity from the project settings to be synced with RigidBody nodes.
func _ready():
	position = startingPosition

func _physics_process(delta):
	
	position += projectileSpeed * fireBallSpeed

	
func _on_area_2d_area_entered(area):
	queue_free()


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_character_body_2d_wall():
	queue_free()


func _on_area_entered(area):
	queue_free()
