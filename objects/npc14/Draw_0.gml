// Vẽ hội thoại và lựa chọn
if (is_talking) {
    // Vẽ khung câu thoại
    var text_width = string_width(dialogue_steps[dialogue_step]);
    var box_width = text_width + 20; // Thêm chút khoảng cách cho khung
    var box_height = 50; // Chiều cao khung hội thoại

    // Giới hạn chiều rộng của khung (ví dụ: 400px)
    if (box_width > 400) {
        box_width = 400;
    }

    // Tính chiều cao khung dựa trên số dòng của văn bản
    var max_line_width = box_width - 20; // Chiều rộng tối đa của mỗi dòng
    var lines = [];
    var current_line = "";
    
    // Chia văn bản thành các dòng
    var text = dialogue_steps[dialogue_step];
    for (var i = 1; i <= string_length(text); i++) {
        var current_char = string_copy(text, i, 1);
        var temp_line = current_line + current_char;
        
        if (string_width(temp_line) > max_line_width) {
            // Nếu dòng hiện tại quá dài, tạo một dòng mới
            array_push(lines, current_line);
            current_line = current_char;
        } else {
            current_line = temp_line;
        }
    }
    
    // Thêm dòng cuối cùng
    array_push(lines, current_line);
    
    // Tính chiều cao của khung dựa trên số dòng
    box_height = array_length(lines) * 30 + 20; // Mỗi dòng có chiều cao 30px

    // Vẽ khung hội thoại
    draw_set_color(c_black);
    draw_rectangle(x - (box_width / 2), y - box_height, x + (box_width / 2), y, false);

    // Vẽ từng dòng văn bản
    draw_set_color(c_white);
    for (var i = 0; i < array_length(lines); i++) {
        draw_text(x - (box_width / 2) + 10, y - box_height + 10 + i * 30, lines[i]);
    }

    // Hiển thị tất cả các lựa chọn trong một khung duy nhất
    if (is_first_choice) {
        var choice_width = 250; // Đặt chiều rộng cố định cho lựa chọn (250px)
        var choice_height = 30; // Chiều cao mỗi lựa chọn (30px)
        var total_height = choice_height * array_length(dialogue_choices) + 20; // Tổng chiều cao của khung lựa chọn

        // Vẽ khung cho tất cả các lựa chọn
        draw_set_color(c_black);
        draw_rectangle(x - (choice_width / 2), y + 20, x + (choice_width / 2), y + 20 + total_height, false);

        // Vẽ tất cả các lựa chọn trong một khung
        for (var i = 0; i < array_length(dialogue_choices); i++) {
            draw_set_color(i == selected_option ? c_yellow : c_white);
            draw_text(x - (choice_width / 2) + 10, y + 30 + i * choice_height, string(i + 1) + ". " + dialogue_choices[i]);
        }
    }

    // Hiển thị lựa chọn tiếp theo sau khi chọn "Có"
    if (dialogue_step == 1) {
        var next_choice_width = 250; // Đặt chiều rộng cố định cho lựa chọn tiếp theo
        var next_choice_height = 30; // Chiều cao mỗi lựa chọn (30px)
        var next_total_height = next_choice_height * array_length(next_choices) + 20; // Tổng chiều cao của khung lựa chọn tiếp theo

        // Vẽ khung cho tất cả các lựa chọn tiếp theo
        draw_set_color(c_black);
        draw_rectangle(x - (next_choice_width / 2), y + 120, x + (next_choice_width / 2), y + 120 + next_total_height, false);

        // Vẽ tất cả các lựa chọn tiếp theo trong một khung
        for (var i = 0; i < array_length(next_choices); i++) {
            draw_set_color(i == selected_option ? c_yellow : c_white);
            draw_text(x - (next_choice_width / 2) + 10, y + 130 + i * next_choice_height, string(i + 1) + ". " + next_choices[i]);
        }
    }
}