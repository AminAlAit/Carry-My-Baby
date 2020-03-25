if (isMother) {
	spr_run		= spr_karen_run;
	spr_idle	= spr_karen;	
	_id		    = parent.mother;	
}
else {
	spr_run		= spr_bob_run;
	spr_idle	= spr_bob;
	_id		    = parent.father;	
}