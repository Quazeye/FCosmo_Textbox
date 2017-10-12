/// @description
if(place_meeting(x,y, oPlayer)){
	// If I haven't already created my textbox, make one.
	if(myTextbox == noone){
		myTextbox = instance_create_layer(x, y, "Text", oTextBox);
		myTextbox.text = myText;
	}
} else {
		if(myTextbox != noone) {
			instance_destroy(myTextbox);
			myTextbox = noone;
		}
	}