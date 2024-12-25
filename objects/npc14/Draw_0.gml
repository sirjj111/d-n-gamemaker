// Nếu đang trò chuyện, hiển thị hộp thoại
if (is_talking) {
    // Vẽ nền hộp thoại
    draw_set_color(c_black);
    draw_rectangle(50, 300, 600, 450, false);
	// Vẽ nội dung hộp thoại
    draw_set_color(c_white);
    draw_text(60, 310, "Chọn một lựa chọn:");
	 // Vẽ các lựa chọn
    for (var i = 0; i < array_length(dialogue_choices); i++) {
        if (i == selected_option) {
            draw_set_color(c_yellow); // Đánh dấu lựa chọn hiện tại
        } else {
            draw_set_color(c_white);
        }
        draw_text(80, 340 + (i * 30), dialogue_choices[i]);
    }
}