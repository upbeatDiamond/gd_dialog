extends AudioStreamPlayer

# Sounds to play with button selection
@export var chosenSound :String # (String, FILE)
@export var hoveringSound :String # (String, FILE)

var chosen
var hovering
# Called when the node enters the scene tree for the first time.
func _ready():
	chosen = load(chosenSound)
	hovering = load(hoveringSound)

func _on_choice_selected(_next_id):
	play_sound(chosen)

func _on_choice_hovered():
	play_sound(hovering)

func play_sound(sound):
	self.stream = sound
	self.play()
