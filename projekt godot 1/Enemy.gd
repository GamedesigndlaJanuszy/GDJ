extends Area2D
signal hit
#signal CollisionShape2D_entered
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

#func _on_Enemy_CollisionShape2D_entered(collisionShape):
#	print("hit")
#	print(collisionShape.getParent())
	#if collisionShape.getParent() == "Player":
	#	hide() # Enemy disappears after being hit
	#	emit_signal("hit") # enemy screams to everybody interested 
	#	$CollisionShape2D.disabled = true


func _on_Enemy_area_entered(area):
	hide() # Enemy disappears after being hit
	emit_signal("hit") # enemy screams to everybody interested 
	$CollisionShape2D.disabled = true
