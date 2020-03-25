with (parent_fixing){
		hasControl = true;
}
sprite_index = spr_finished;
fixed = true;

obj_choreManager.chores--;

with (obj_choreUI) {
	if (chore_id == other.chore_id) {
		count--;
		if (count == 0)
			done = true;
	}
}