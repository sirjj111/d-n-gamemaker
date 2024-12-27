/// @description Insert description here
// You can write your code in this editor
// Vẽ một hình chữ nhật phủ toàn bộ màn hình với độ mờ đã cài đặt
draw_set_color(c_black); // Màu đen
draw_set_alpha(alpha); // Đặt độ mờ
draw_rectangle(0, 0, room_width, room_height, false); // Vẽ hình chữ nhật phủ toàn bộ phòng
draw_set_alpha(1); // Đặt lại độ mờ về mặc định
