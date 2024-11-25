extends Node2D
var strength = 1
var maxCooldown = 30
var cooldown = maxCooldown
var ammo = 99999
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var aimingdir = (get_parent().pos - get_viewport().get_mouse_position().normalized())
	if Input.is_action_just_pressed("fire") and cooldown <= 0:
		get_parent().velocity += -aimingdir * strength
		cooldown = maxCooldown
	cooldown -= 1
