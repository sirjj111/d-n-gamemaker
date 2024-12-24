 /// @description Insert description here
// You can write your code in this editor
target_x = points[target_index][0];
target_y = points[target_index][1];

// di chuển đến góc tiếp
move_towards_point(target_x, target_y, 1);

// kiểm tra đến góc tiếp và chuyển góc
if (point_distance(x, y, target_x, target_y) < 5) {
    target_index = (target_index + 1) mod 4; 
}
         
// vị trí nv
kysi_x =kysimove.x;
kysi_y = kysimove.y;

// khoảng cách quái và nv
distance = point_distance(x, y,kysi_x, kysi_y);

// khoảng cách đuổi
if (distance < 150) {
    move_towards_point(kysi_x, kysi_y, 2);
} else {
    // quay lại
    move_towards_point(target_x, target_y, 1);
}