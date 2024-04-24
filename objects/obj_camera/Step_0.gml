if (instance_exists(follow)){
	x_to = follow.x;
	y_to = follow.y;
}

x += (x_to - x) / 15;
y += (y_to - y) / 5;

x = clamp(x, view_w_half, room_width-view_w_half);
y = clamp(y, view_h_half, room_height-view_h_half);

x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude));

camera_set_view_pos(cam, x-view_w_half, y-view_h_half);