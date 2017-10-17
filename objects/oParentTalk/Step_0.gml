/// @description
if(place_meeting(x,y, oPlayer)){
	// If I haven't already created my textbox, make one.
	if(keyboard_check_pressed(vk_space)) {
		if(myTextbox == noone){
			myTextbox = instance_create_layer(x, y, "Text", oTextBox);
			myTextbox.text = myText;
			myTextbox.creator = self;
			myTextbox.name = myName;
		}
	}
} else {
		if(myTextbox != noone) {
			instance_destroy(myTextbox);
			myTextbox = noone;
		}
	}