extends Area2D

var damaged_monsters = {}

func clear_damaged():
	damaged_monsters = {}

func _physics_process(delta):
	if !get_parent().is_swinging():
		return
		
	for body in get_overlapping_bodies():
		var id = body.get_instance_id()
		if body.has_method("get_hit") && !damaged_monsters.has(id):
			body.get_hit()
			damaged_monsters[id] = true



