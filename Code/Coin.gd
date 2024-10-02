extends Area2D

var value = 5
var value2=1

func _on_body_entered(body):
	if body.is_in_group('Jugador'):
		get_tree().get_current_scene().add_coins(value)
		$AnimationPlayer.play('Pickup')
		$CollisionShape2D.set_deferred('disabled', true)
		


func _on_animation_player_animation_finished(anim_name):
	queue_free()
