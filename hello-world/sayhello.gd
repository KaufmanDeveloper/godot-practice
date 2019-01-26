extends Panel

var scene

func _ready():
	scene = preload("res://hello.tscn")
	get_node("Button").connect("pressed", self, "_on_Button_pressed")
	
	
	
func _on_Button_pressed():
	get_node("Label").text = "HELLO!"
	var node = scene.instance()
	add_child(node)