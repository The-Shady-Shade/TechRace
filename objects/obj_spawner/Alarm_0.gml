var obj_type = choose(obj_wall, obj_wall_double, obj_wall_triple);
instance_create_layer(random_range(road_w_start+mrg, road_w_end-mrg), random_range(0, road_h+mrg), "Obstacles", obj_type);