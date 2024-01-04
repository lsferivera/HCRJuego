extends CanvasLayer
@onready var menu : Node2D = $Menu

# Called when the node enters the scene tree for the first time.
func _ready():
	menu.visible = false

func _process(delta):
	pass


func _on_button_pressed():
	get_tree().paused = true
	menu.visible = get_tree().paused


func _on_resume_pressed():
	get_tree().paused = false
	menu.visible = get_tree().paused


func _on_restart_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()
	

