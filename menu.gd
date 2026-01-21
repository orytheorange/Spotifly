extends Control


func _on_listen_pressed():
	get_tree().change_scene_to_file("res://get_spotifly_premium.tscn")

func _on_premium_pressed():
	get_tree().change_scene_to_file("res://premium.tscn")

func _on_quit_pressed():
	get_tree().quit()
