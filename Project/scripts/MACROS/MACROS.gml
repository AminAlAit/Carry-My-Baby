#macro FRAME_RATE 60
#macro TILE_SIZE 32
#macro slow_speed FRAME_RATE * 5;
#macro normal_speed FRAME_RATE * 2.5;

enum parent {
	mother = 0,
	father = 1
}

enum needType {
	sooth = 0,
	feed = 1,
	changeDiaper = 2
}