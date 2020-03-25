y -= vsp;
image_alpha -= 0.005;
vsp--;
if (vsp <= 0)
	vsp = 1;
//lerp()
if(image_alpha<=0) instance_destroy();