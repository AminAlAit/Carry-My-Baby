// Move forward
timeline_position++;

// destroy text box when done with the script
if(timeline_position > timeline_max_moment(timeline_index) + 1){
	instance_destroy();
}

text_position = 0;
new_text	  = "";