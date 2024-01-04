extends Node2D
@onready var pause_menu = $PauseMenu
var paused = false

var coins_collected = 0

func add_coins(amount):
	coins_collected += amount
	$UI/Coin/Label.text = str(coins_collected)

func update_fuel_UI(value):
	$UI/Fuel/ProgressBar.value = value
	var stylebox = $UI/Fuel/ProgressBar.get('custom_style/fg')

func pause(state):
	if state:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		pause_menu.hide()
		get_tree().paused = false

	else:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_tree().paused = true
		pause_menu.show()
		
