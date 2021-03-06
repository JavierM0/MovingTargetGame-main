# Global.gd

# Backgrounds
# https://www.flickr.com/photos/29638108@N06/51690240835/in/dateposted/
# Credits: Jennifer C. www.metaphoricalplatypus.com

# Bow & Arrow @sammo241 (2012): https://openclipart.org/detail/171957/bow-and-arrow

extends Node2D

const TargetImage = preload("res://images/target.png")

onready var Score = 0
onready var Level = 1

var Rnd
var ScreenW
var ScreenH
var Cols # array
var TargetWidth

func _ready():
	ScreenW = get_viewport().size.x # screen size
	ScreenH = get_viewport().size.y
	Rnd = RandomNumberGenerator.new()
	Rnd.randomize()
	TargetWidth = TargetImage.get_width()
	Cols = range(TargetWidth, ScreenW, TargetWidth) # generate cols array
	Cols.remove(Cols.size()/2) # remove middle column
	z_index = 1
	set_process(true)

func _process(_delta):
	$scoreLabel.text = "Level: " + String(Level) + "  Score: " + String(Score) 

func game_over():
	$scoreLabel.set_text("GAME OVER!  Score = "+String(Score))
