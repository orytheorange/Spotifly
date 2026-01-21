extends Label


func _physics_process(_delta):
	self.text = "Ur Bank Account: $" + str(BanksAccount.MONEY)
