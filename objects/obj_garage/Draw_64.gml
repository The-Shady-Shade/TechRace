draw_set_font(fnt_silver);

draw_set_color(c_black);
	draw_set_alpha(0.5);
		draw_rectangle(margin, 0, margin+menu_w, gui_h, 0);
	draw_set_alpha(1);
draw_set_color(c_white);

for (var i=0; i < item_count; i++){
	var arr = items[| i];
	var item = arr[0];
	
	var xx = margin + menu_w/2;
	var yy = (gui_h/2) + (i-selected_anim)*64; // Space between items
	
	var s = 1;
	if (i == selected){
		s = 1.4
		item = "> " + item + " <";
	}
	
	draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
			draw_text_transformed(xx, yy, item, s, s, 0);
		draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}

var arr = items[| selected];
var item =	arr[0];
var price = arr[1];
var desc = arr[2];

var xx = (margin + menu_w) + preview_w/2;
var yy = gui_h / 2;

var spr = asset_get_index("spr_" + string_lower(item));

if (sprite_exists(spr)){
	var s = 7;
	draw_sprite_ext(spr, 0, xx-margin, yy-35, s, s, 0, -1, 1);
}

draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
		draw_text(xx-margin, yy+100, desc);
	draw_set_valign(fa_top);
draw_set_halign(fa_left);

draw_text(32, 32, "Money: " + string(global.score));

draw_set_valign(fa_bottom);
	draw_text(margin + menu_w + 4, gui_h-4, "Price: " + string(price));
	
	draw_set_halign(fa_right);
		draw_text(gui_w-4, gui_h-4, "Press Enter to buy.");
	draw_set_halign(fa_left);
draw_set_valign(fa_top)