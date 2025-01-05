/// @description Insert description here
// You can write your code in this editor
// Tọa độ điểm chỉ định
var x_target = 671; // X của điểm chỉ định
var y_target = 7; // Y của điểm chỉ định

// Kiểm tra nếu nhân vật đến gần điểm chỉ định (hoặc chính xác)
if (distance_to_point(x_target, y_target) < 5|| distance_to_point(x_target + 40, y_target) < 5) {
    // Khi nhân vật đến điểm chỉ định, chuyển sang phòng mới
    room_goto(mapthu2); // room2 là phòng bạn muốn chuyển đến
}
// Kiểm tra nếu nhân vật không đang nói chuyện
if (!is_talking) {
} else {
    // Nếu đang nói chuyện, dừng di chuyển
    speed = 0;
}

// Kiểm tra khoảng cách với NPC và bắt đầu trò chuyện
var distance = point_distance(x, y, obj_cha.x, obj_cha.y);
if (!is_talking && distance < 50 && keyboard_check_pressed(vk_space)) {
    is_talking = true;  // Bắt đầu trò chuyện
    // Tiến hành hiển thị hộp thoại...
}

// Thoát khỏi hội thoại bằng phím Esc
if (keyboard_check_pressed(vk_enter)) {
    is_talking = false;  // Kết thúc trò chuyện và cho phép di chuyển
}

