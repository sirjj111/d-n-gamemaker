/// @description Insert description here
// You can write your code in this editor
// Vẽ khung thoại
if (is_talking) {
    var box_width = 400;
    var box_height = 100;
    var text_x = x - box_width / 2;
    var text_y = y - box_height - 20;

    // Vẽ nền hộp thoại
    draw_set_color(c_black);
    draw_rectangle(text_x, text_y, text_x + box_width, text_y + box_height, false);
    
    // Vẽ văn bản trong hộp thoại
    draw_set_color(c_white);
    draw_text(text_x + 10, text_y + 10, "Chào bạn! Làm gì giúp bạn?");
}
