extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	Saved.loadGame();
	if Game.worldProgression >= 2:
		$lvl2.disabled = false
	if Game.worldProgression >= 3:
		$lvl3.disabled = false
	if Game.worldProgression >= 4:
		$lvl4.disabled = false
	if Game.worldProgression >= 5:
		$lvl5.disabled = false
	if Game.worldProgression >= 6:
		$lvl6.disabled = false
	if Game.worldProgression >= 7:
		$lvl7.disabled = false
	if Game.worldProgression >= 8:
		$lvl8.disabled = false
	if Game.worldProgression >= 9:
		$lvl9.disabled = false
	if Game.worldProgression >= 10:
		$lvl10.disabled = false
	if Game.worldProgression >= 11:
		$lvl11.disabled = false
	if Game.worldProgression >= 12:
		$lvl12.disabled = false
	if Game.worldProgression >= 13:
		$lvl13.disabled = false
	if Game.worldProgression >= 14:
		$lvl14.disabled = false
	if Game.worldProgression >= 15:
		$lvl15.disabled = false
	if Game.worldProgression >= 16:
		$lvl16.disabled = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_lvl_1_pressed():
	get_tree().change_scene_to_file("Scenes/lvl1.tscn")


func _on_lvl_2_pressed():
	get_tree().change_scene_to_file("Scenes/lvl2.tscn")


func _on_lvl_3_pressed():
	get_tree().change_scene_to_file("Scenes/lvl3.tscn")


func _on_lvl_4_pressed():
	get_tree().change_scene_to_file("Scenes/lvl4.tscn")


func _on_lvl_5_pressed():
	get_tree().change_scene_to_file("Scenes/lvl5.tscn")


func _on_lvl_6_pressed():
	get_tree().change_scene_to_file("Scenes/lvl6.tscn")


func _on_lvl_7_pressed():
	get_tree().change_scene_to_file("Scenes/lvl7.tscn")


func _on_lvl_8_pressed():
	get_tree().change_scene_to_file("Scenes/lvl8.tscn")


func _on_lvl_9_pressed():
	get_tree().change_scene_to_file("Scenes/lvl9.tscn")


func _on_lvl_10_pressed():
	get_tree().change_scene_to_file("Scenes/lvl10.tscn")


func _on_lvl_11_pressed():
	get_tree().change_scene_to_file("Scenes/lvl11.tscn")


func _on_lvl_12_pressed():
	get_tree().change_scene_to_file("Scenes/lvl12.tscn")


func _on_lvl_13_pressed():
	get_tree().change_scene_to_file("Scenes/lvl13.tscn")


func _on_lvl_14_pressed():
	get_tree().change_scene_to_file("Scenes/lvl14.tscn")


func _on_lvl_15_pressed():
	get_tree().change_scene_to_file("Scenes/lvl15.tscn")


func _on_lvl_16_pressed():
	get_tree().change_scene_to_file("Scenes/lvl6.tscn")


func _on_lvl_17_pressed():
	get_tree().change_scene_to_file("main_menu.tscn")
