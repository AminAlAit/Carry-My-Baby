if (done) {
	image_alpha -= 0.005;
	image_index = 1;
	if (image_alpha <= 0)
		instance_destroy();
}