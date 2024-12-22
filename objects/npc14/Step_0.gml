/// @description Insert description here
// You can write your code in this editor
// Khoảng cách để người chơi có thể tương tác
var distance = point_distance(x, y, kysimove.x, kysimove.y);

// Kiểm tra nếu người chơi gần và nhấn phím
if (distance < 50 && keyboard_check_pressed(vk_space)) {
    // Nếu chưa trò chuyện, bắt đầu trò chuyện
    is_talking = !is_talking;
}

if (is_talking && keyboard_check_pressed(vk_enter)) {
    // Đóng hộp thoại khi nhấn Enter
    is_talking = false;
}
