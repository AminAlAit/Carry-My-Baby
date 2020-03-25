draw_set_font(fnt_dialogue);

var text_width  = string_width(new_text);
var text_height = string_height(new_text);
var margin		= 5;

draw_set_color(c_white);
draw_rectangle(x - margin, y - margin, x + text_width + margin, y + text_height+ margin, false);

draw_set_color(c_black);
draw_text(x, y, new_text);