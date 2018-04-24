extends KinematicBody2D
var hp = 50
var living = true

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _physics_process(delta):
	if !living:
		return

func get_hit():
	hp -= 25
	if hp <= 0:
		queue_free()
