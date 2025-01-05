/// @description Insert description here
// You can write your code in this editor// Tọa độ điểm chỉ định
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

