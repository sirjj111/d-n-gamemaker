if keyboard_check_pressed(vk_space){
	if image_index < 1{
		image_index = image_index+1 
	}else {
		room_goto(mapmodau)
	}
 }