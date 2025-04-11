extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_wizard_hurt():
	get_tree().change_scene_to_file("Scenes/lvl3.tscn")


func _on_wizard_win():
	if Game.worldProgression < 4:
		Game.worldProgression = 4
		Saved.saveGame();
	get_tree().change_scene_to_file("Scenes/lvl4.tscn")
