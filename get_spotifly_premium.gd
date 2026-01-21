extends Control
@onready var no = $No
@onready var timer = $Timer
@onready var x = $X


func _ready():
	x.hide()
	timer.start()
	
func _on_yes_pressed():
	get_tree().change_scene_to_file("res://premium.tscn")

func teleport_rd():
	no.global_position = Vector2(
		randf_range(0, 1000),
		randf_range(0, 600)
	)
func _on_no_mouse_entered():
	teleport_rd()

func _on_timer_timeout():
	x.show()


func _on_x_pressed():
	get_tree().change_scene_to_file("res://spotifly.tscn")
