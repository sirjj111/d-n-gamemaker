// Kiểm tra khoảng cách giữa người chơi và NPC
var distance = point_distance(x, y, obj_cha.x, obj_cha.y);

// Nếu người chơi đến gần và nhấn Space để bắt đầu trò chuyện
if (!is_talking && distance < 50 && keyboard_check_pressed(vk_space)) {
    is_talking = true;       // Bắt đầu trò chuyện
    dialogue_step = 0;       // Bắt đầu từ bước đầu tiên
    selected_option = 0;     // Reset lựa chọn
    is_first_choice = true;  // Đánh dấu rằng đây là lựa chọn đầu tiên
}
// Nếu đang trò chuyện
if (is_talking) {
    // Vẽ hộp thoại và câu thoại hiện tại
    draw_set_color(c_black);
    draw_rectangle(x - 100, y - 150, x + 100, y - 100, false); // Vẽ nền hộp thoại

    draw_set_color(c_white);
    draw_text(x - 90, y - 145, dialogue_steps[dialogue_step]); // Vẽ câu thoại hiện tại

    // Hiển thị lựa chọn ban đầu "Có"/"Không"
    if (is_first_choice) {
        // Di chuyển giữa các lựa chọn bằng phím W và S
        if (keyboard_check_pressed(ord("W"))) {
            selected_option = max(0, selected_option - 1); // Di chuyển lên
        }
        if (keyboard_check_pressed(ord("S"))) {
            selected_option = min(array_length(dialogue_choices) - 1, selected_option + 1); // Di chuyển xuống
        }

        // Hiển thị lựa chọn ban đầu
        for (var i = 0; i < array_length(dialogue_choices); i++) {
            draw_text(x - 90, y - 120 + i * 20, string(i + 1) + ". " + dialogue_choices[i]);
        }

        // Xác nhận lựa chọn bằng phím Enter
        if (keyboard_check_pressed(vk_enter)) {
            if (selected_option == 0) { // Chọn "Có"
                show_message("Bạn đã chọn có");
                dialogue_step = 1;  // Tiến đến câu tiếp theo nếu chọn "Có"
                is_first_choice = false; // Ẩn lựa chọn ban đầu
            } else if (selected_option == 1) { // Chọn "Không"
                show_message("Bạn đã chọn không");
                dialogue_step = 2;  // Tiến đến câu tiếp theo nếu chọn "Không"
                is_first_choice = false; // Ẩn lựa chọn ban đầu
                is_talking = false; // Kết thúc trò chuyện
            }
        }
    } 
    // Nếu đã chọn "Có", hiển thị câu thoại và lựa chọn tiếp theo
    else if (dialogue_step == 1) {
        // Di chuyển giữa các lựa chọn tiếp theo
        if (keyboard_check_pressed(ord("W"))) {
            selected_option = max(0, selected_option - 1); // Di chuyển lên
        }
        if (keyboard_check_pressed(ord("S"))) {
            selected_option = min(array_length(next_choices) - 1, selected_option + 1); // Di chuyển xuống
        }

        // Hiển thị câu thoại tiếp theo
		else if (dialogue_step == 1) {
    draw_text(x - 90, y - 145, "NPC: Bạn muốn làm gì tiếp theo?");
	for (var i = 0; i < array_length(next_choices); i++) {
        draw_text(x - 90, y - 120 + i * 20, string(i + 1) + ". " + next_choices[i]);
    }
}
        // Hiển thị các lựa chọn tiếp theo
        for (var i = 0; i < array_length(next_choices); i++) {
            draw_text(x - 90, y - 120 + i * 20, string(i + 1) + ". " + next_choices[i]);
        }

        // Xác nhận lựa chọn bằng phím Enter
        if (keyboard_check_pressed(vk_enter)) {
            if (selected_option == 0) { // Chọn "Đi dạo"
                show_message("Bạn đã chọn giúp đỡ");
                // Tiến đến bước tiếp theo nếu chọn "Đi dạo"
                dialogue_step = 3; 
                is_talking = false; // Kết thúc trò chuyện sau khi chọn
            } else if (selected_option == 1) { // Chọn "Tìm kiếm kho báu"
                show_message("Bạn đã kệ con mẹ nó");
                // Tiến đến bước tiếp theo nếu chọn "Tìm kiếm kho báu"
                dialogue_step = 4; 
                is_talking = false; // Kết thúc trò chuyện sau khi chọn
            }
        }
    }
    // Thoát khỏi hội thoại bằng phím Esc
    if (keyboard_check_pressed(vk_escape)) {
        is_talking = false;
    }
}