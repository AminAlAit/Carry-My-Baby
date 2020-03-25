minutes		 = 1.5;
cps_timer	 = FRAME_RATE * 60 * minutes;
overall_time = cps_timer;
baby_messes_cps = 0;
chores_cps		= 0;
inst = instance_create_layer(1152, 128, "Instances", obj_baby_temper_meter);