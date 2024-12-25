// Kiểm tra khoảng cách giữa người chơi và NPC
var distance = point_distance(x, y, obj_cha.x, obj_cha.y);

// Nếu người chơi đến gần và nhấn Space để bắt đầu trò chuyện
if (!is_talking && distance < 50 && keyboard_check_pressed(vk_space)) {
    is_talking = true;       // Bắt đầu trò chuyện
    dialogue_step = 0;       // Bắt đầu từ bước đầu tiên
    selected_option = 0;     // Reset lựa chọn
}

// Nếu đang trò chuyện
if (is_talking) {
    // Di chuyển giữa các lựa chọn bằng mũi tên
    if (keyboard_check_pressed(ord("W"))) {
        selected_option = max(0, selected_option - 1);
    }
    if (keyboard_check_pressed(ord("S"))) {
        selected_option = min(array_length(dialogue_choices) - 1, selected_option + 1);
    }

    // Xác nhận lựa chọn bằng Enter
    if (keyboard_check_pressed(vk_enter)) {
        // Xử lý tùy theo lựa chọn
        if (selected_option == 0) {
            show_message("Bạn đã chọn Lựa chọn 1!");
        } else if (selected_option == 1) {
            show_message("Bạn đã chọn Lựa chọn 2!");
        } else if (selected_option == 2) {
            show_message("Bạn đã chọn Lựa chọn 3!");
        }
        is_talking = false; // Kết thúc trò chuyện sau khi lựa chọn
    }

    // Thoát khỏi hội thoại bằng phím Esc
    if (keyboard_check_pressed(vk_escape)) {
        is_talking = false;
    }
}