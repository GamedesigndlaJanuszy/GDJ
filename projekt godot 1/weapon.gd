extends Node2D

func swing():
	$AnimationPlayer.play("swing")
	$Area2D.clear_damaged()


func is_swinging():
	if $AnimationPlayer.current_animation == "swing":
		return true
	else:
		return false
