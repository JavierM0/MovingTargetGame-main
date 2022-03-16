extends Sprite
var mouseposition

func _process(delta):
	mouseposition = get_local_mouse_position()
	rotation+= mouseposition.angle() * 0.1

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
