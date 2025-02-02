extends Node2D



func _on_button_pressed() -> void:
	var  rand_int = randi_range(1,10)
	var rand_float = randf_range(1,10)
	print(rand_int)
	print(rand_float)

	#var inp_text = get_node("TextEdit")
	var inp_text:TextEdit = $TextEdit
	
	print(inp_text.text)
	print(inp_text.placeholder_text)


	var label_start:Label = $Label
	print(label_start.text)
	label_start.text = inp_text.text
	
	
	label_start.position.y = int(inp_text.text)

func _on_text_edit_text_changed() -> void:
	var but:Button = $Button
	var inp_text:TextEdit = $TextEdit
	but.text = inp_text.text


func _on_check_button_pressed() -> void:
	var check_but:CheckButton = $CheckButton
	print(check_but.button_pressed)
	
	
	var but:Button = $Button
	
	var new_style =  StyleBoxFlat.new()
	if(check_but.button_pressed):
		new_style.bg_color = "#00a4e5"
	
	else:
		new_style.bg_color = "#7568c1"
		
	but.set("theme_ovrride_styles/normal",new_style)
