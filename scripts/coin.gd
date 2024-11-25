extends Area2D

@onready var game_manager = %GameManager
@onready var pickupan = $pickupan



func _on_body_entered(body):
	game_manager.addpoint()
	print("+1 coin")
	pickupan.play("pickup")
