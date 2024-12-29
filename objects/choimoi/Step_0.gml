// Kiểm tra xem chuột có đang nằm trong phạm vi của đối tượng không
if (point_in_rectangle(mouse_x, mouse_y, x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2)) {
    // Nếu chuột vào, phóng to hình ảnh ra 2 bên
    image_xscale = 1.1;  // Tăng kích thước theo chiều ngang
    image_yscale = 1.1;  // Tăng kích thước theo chiều dọc
} else {
    // Nếu chuột không vào, khôi phục lại kích thước ban đầu
    image_xscale = 1;
    image_yscale = 1;
}
if (point_in_rectangle(mouse_x, mouse_y, x - sprite_width/1, y - sprite_height/1, x + sprite_width/1, y + sprite_height/1)) {
    // Phóng to chiều ngang
    image_xscale = 1.1;
	image_yscale = 1.1;
} else {
    // Khôi phục lại kích thước chiều ngang ban đầu
    image_xscale = 1;
}
if (point_in_rectangle(mouse_x, mouse_y, x - sprite_width/1, y - sprite_height/1, x + sprite_width/1, y + sprite_height/1)) {
    // Phóng to chiều ngang
	image_yscale = 1.1;
} else {
    // Khôi phục lại kích thước chiều ngang ban đầu
    image_yscale = 1;
}