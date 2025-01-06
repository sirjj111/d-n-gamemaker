if (keyboard_check_pressed(vk_enter)) {
    if (image_index < 2) {
        image_index = image_index + 1;  
    } else {
        room_goto(mapmodau);
    }
}
