/// @description 

// Draw Textbox
draw_rectangle(x-2, y-2, x + boxWidth + 2, y + boxHeight + 2, false);
draw_sprite(sBox, 0, x, y);


// Set font
draw_set_font(fntText);

// Increment character counter every frame
if(charCount < string_length(text[page])) {
	charCount += 0.2;
}

// Copy part of the text
textPart = string_copy(text[page], 1, charCount);

// Draw the name
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_text(x + (boxWidth / 2), y + yBuffer, name);
draw_set_halign(fa_left);

// Draw part of the text
draw_set_color(c_white);
draw_text_ext(x + xBuffer, y + stringHeight + yBuffer, textPart, stringHeight, boxWidth - (2 * xBuffer));

