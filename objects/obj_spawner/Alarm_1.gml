var obj_type = obj_car_backward

if (obj_type == obj_car_backward){
	instance_create_layer(random_range(road_w_start+mrg, road_w_end-mrg), random_range(0, road_h-mrg), "Obstacles", obj_type);
}