
if(room != lose) room_goto_next();
else {
	draw_set_font(fnt_default);
	room_goto(menu);
}