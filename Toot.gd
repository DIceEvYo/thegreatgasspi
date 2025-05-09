extends Node2D

var all_exclusive_inclusive_wonderfully_poopsclusive_farttastical_limited_eddition_fart_gatcha = [
	"res://assests/final/final1.mp3",
	"res://assests/final/final2.mp3",
	"res://assests/final/final3.mp3",
	"res://assests/final/final4.mp3",
	"res://assests/final/final5.mp3",
	"res://assests/final/final6.mp3",
	"res://assests/final/final7.mp3",
	"res://assests/final/final8.mp3"
]

var keys = [
	'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
	'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
	'U', 'V', 'W', 'X', 'Y', 'Z',
	'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'
	]

var index = randi_range(0, keys.size()-1)
var lucky_stinky_pooPoo = randi_range(0, all_exclusive_inclusive_wonderfully_poopsclusive_farttastical_limited_eddition_fart_gatcha.size()-1)
var game_over = false

func _input(event):
	if not(game_over) and event is InputEventKey and event.pressed and not event.echo:
		var key_pressed = event.as_text().to_upper()
		if key_pressed == keys[index]:
			add_time(1)
		else:
			subtract_time(0.1)
		
			
func _process(delta):
	if($Timer.time_left > 0):
		$RichTextLabel.text = str($Timer.time_left)
	else:
		game_over = true
		$RichTextLabel.text = "@#FQR#$ THE GAME IS OVER wfhurgbw$#$QTY$$Q"
		$STUPIDPOOPOOBLASTER.stream = load(all_exclusive_inclusive_wonderfully_poopsclusive_farttastical_limited_eddition_fart_gatcha[lucky_stinky_pooPoo])
		$STUPIDPOOPOOBLASTER.play()

func subtract_time(seconds: float):
	$Timer.start(max($Timer.time_left - seconds, 0))

func add_time(seconds: float):
	$Timer.start(max($Timer.time_left + seconds, 0))
	index = randi_range(0, keys.size()-1)
