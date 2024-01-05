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
	$Botones/Izquierda.visible = false
	$Botones/Derecha.visible = false


func _on_resume_pressed():
	get_tree().paused = false
	menu.visible = get_tree().paused
	$Botones/Izquierda.visible = true
	$Botones/Derecha.visible = true


func _on_restart_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()
	$Botones/Izquierda.visible = true
	$Botones/Derecha.visible = true

func _on_dere_pressed():
	get_tree().Input.is_action_pressed('ui_right')
