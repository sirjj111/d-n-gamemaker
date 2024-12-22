/// @description Insert description here
// You can write your code in this editor
// Trong sự kiện Step của obj_select_character
if (keyboard_check_pressed(vk_left)) {
    global.selected_character -= 1;    
    if (global.selected_character < 1) {
        global.selected_character = 4;  
    }
}

if (keyboard_check_pressed(vk_right)) {
    global.selected_character += 1;  
    if (global.selected_character > 4) {
        global.selected_character = 1; 
    }
}
if (keyboard_check_pressed(vk_enter)) {
    room_goto(rm_start_map); // Chuyển sang phòng bản đồ
}

