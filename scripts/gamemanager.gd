extends Node
var score = 0
@onready var scorelabel = $scorelabel

func addpoint():
	score += 1
	scorelabel.text = " you got " + str(score) + " coins"
