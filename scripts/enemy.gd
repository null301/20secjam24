extends Node2D
const SPEED = 60
var direction = 1
@onready var raycast_right = $raycastRight
@onready var raycast_left = $raycastLeft
@onready var animated_sprite = $AnimatedSprite2D


# Step event
func _process(delta):
	if raycast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if raycast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
	
	position.x += direction * SPEED * delta
