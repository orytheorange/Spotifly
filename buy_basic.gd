extends Control
var number := randf_range(0, 101)
@onready var animation_player = $AnimationPlayer
@onready var money = $Money
@onready var buy_2 = $Buy2
@onready var timer = $Timer
@onready var spin_cooldown = $"Spin cooldown"

func _ready():
	animation_player.play("idle")
	
func _physics_process(_delta):
	money.text = "Ur Bank Account: $" + str(BanksAccount.MONEY)
	if (BanksAccount.MONEY <= 0):
		get_tree().change_scene_to_file("res://brokie.tscn")
	
func _on_buy_2_pressed():
	buy_2.disabled = true
	spin_cooldown.start()
	number = randf_range(0, 101)
	BanksAccount.MONEY -= 10000
	if number >= 100:
		animation_player.play("SpinWind")
	elif number > 90:
		animation_player.play("Spin4")
	elif number > 60:
		animation_player.play("Spin3")
	elif number > 30:
		animation_player.play("Spin2")
	else:
		animation_player.play("SPin1")

func _on_spin_cooldown_timeout():
	buy_2.disabled = false


func _on_button_pressed():
	get_tree().change_scene_to_file("res://premium.tscn")
