extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	text = "[rainbow freq=1 sat=0.5]" + str(Scorer.score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
