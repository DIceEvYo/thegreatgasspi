extends Node2D

var all_exclusive_inclusive_wonderfully_poopsclusive_farttastical_limited_eddition_fart_gatcha = [
	preload("res://assests/final/final1.mp3"),
	preload("res://assests/final/final2.mp3"),
	preload("res://assests/final/final3.mp3"),
	preload("res://assests/final/final4.mp3"),
	preload("res://assests/final/final5.mp3"),
	preload("res://assests/final/final6.mp3"),
	preload("res://assests/final/final7.mp3"),
	preload("res://assests/final/final8.mp3")
]

var quicky_inclusive_woke_poopexsclusive_fartsicle_unlimited_gatcha_deluxe_farts = [
	preload("res://assests/quick/quick_long1.mp3"),
	preload("res://assests/quick/quick2.mp3"),
	preload("res://assests/quick/quick3.mp3"),
	preload("res://assests/quick/quick4.mp3"),
	preload("res://assests/quick/quick5.mp3"),
	preload("res://assests/quick/quick6.mp3"),
	preload("res://assests/quick/quick7.mp3"),
	preload("res://assests/quick/quick8.mp3"),
	preload("res://assests/quick/quick_long9.mp3"),
	preload("res://assests/quick/quick10.mp3"),
	preload("res://assests/quick/quick11.mp3"),
	preload("res://assests/quick/quick12.mp3"),
	preload("res://assests/quick/quick_long13.mp3"),
	preload("res://assests/quick/quick14.mp3"),
	preload("res://assests/quick/quick15.mp3"),
	preload("res://assests/quick/quick16.mp3"),
	preload("res://assests/quick/quick17.mp3"),
	preload("res://assests/quick/quick18.mp3"),
	preload("res://assests/quick/quick19.mp3"),
	preload("res://assests/quick/quick20.mp3"),
	preload("res://assests/quick/quick21.mp3"),
	preload("res://assests/quick/quick22.mp3"),
	preload("res://assests/quick/quick23.mp3"),
	preload("res://assests/quick/quick24.mp3"),
	preload("res://assests/quick/quick25.mp3"),
	preload("res://assests/quick/quick26.mp3"),
]

var no_fart_l_rizz_frfr_big_sadge = preload("res://assests/success.wav")
@onready var time = $Timer.wait_time

var keys = [
	'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
	'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
	'U', 'V', 'W', 'X', 'Y', 'Z',
	]
# '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'
var index = randi_range(0, keys.size()-1)
var lucky_stinky_pooPoo = randi_range(0, all_exclusive_inclusive_wonderfully_poopsclusive_farttastical_limited_eddition_fart_gatcha.size()-1)
var game_over = false
var is_quick_fart_started = false

func _input(event):
	if not(game_over) and event is InputEventKey and event.pressed and not event.echo:
		var key_pressed = event.as_text().to_upper()
		if key_pressed == keys[index]:
			add_time(3)
			time += 3
			$STUPIDPOOPOOBLASTER.stream = no_fart_l_rizz_frfr_big_sadge
			$STUPIDPOOPOOBLASTER.play()
			$QuickFart.stop()
			is_quick_fart_started = false
		else:
			subtract_time(0.1)
			time -= 0.1
			if not is_quick_fart_started:
				print("start")
				$QuickFart.start()
				is_quick_fart_started = true


func _process(_delta):
	if($Timer.time_left > 0):
		$Label.text = str(snapped($Timer.time_left, 0.1))

func subtract_time(seconds: float):
	$Timer.start(max($Timer.time_left - seconds, 0))

func add_time(seconds: float):
	$Timer.start(max($Timer.time_left + seconds, 0))
	index = randi_range(0, keys.size()-1)


func _on_timer_timeout():
	game_over = true
	$QuickFart.stop()
	$STUPIDPOOPOOBLASTER.stream = all_exclusive_inclusive_wonderfully_poopsclusive_farttastical_limited_eddition_fart_gatcha[lucky_stinky_pooPoo]
	$STUPIDPOOPOOBLASTER.play()
	$Farticles.emitting = true
	$BOOMBOOMINMYTOMBTOMB.stop()
	await $STUPIDPOOPOOBLASTER.finished
	$Farticles.emitting = false
	$REEEEEEEEEEEEEEEEE.stop()
	$CherrySpriteCranberry.visible = true
	$MOMGETTHECAMERA.play()
	var anim = create_tween()
	anim.tween_property($left_door, "position", Vector2($left_door.position.x + -50, $left_door.position.y), 6)
	anim.parallel()
	anim.tween_property($right_door, "position", Vector2($right_door.position.x + 50, $right_door.position.y), 6)
	await $MOMGETTHECAMERA.finished
	$TWENTYMILLIONAUDIOPLAYRSLATER.play()
	$Panel.visible = true
	$Panel/LabelGameover.text = "@#FQR#$\bTHE GAME IS OVER\nwfhurgbw$#$QTY$$Q\n" + "Score: " + str(round(time))
	


func _on_quick_fart_timeout():
	$STUPIDPOOPOOBLASTER.stream = quicky_inclusive_woke_poopexsclusive_fartsicle_unlimited_gatcha_deluxe_farts[randi_range(0, quicky_inclusive_woke_poopexsclusive_fartsicle_unlimited_gatcha_deluxe_farts.size()-1)]
	$STUPIDPOOPOOBLASTER.play()
	$Farticles2.emitting = true
	is_quick_fart_started = false


func _on_restart_pressed():
	get_tree().reload_current_scene()
