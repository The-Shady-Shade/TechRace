///@desc transition(mode, target)
///@arg mode
///@arg target

function transition(){
	with (obj_transition){
		mode = argument[0];
		if (argument_count > 1){
			target = argument[1];
		}
	}
}