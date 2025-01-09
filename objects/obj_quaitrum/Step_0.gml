/// @description Insert description here
// You can write your code in this editor
// vị trí nv
obj_cha_x =obj_cha.x;
obj_cha_y = obj_cha.y;

// khoảng cách quái và nv
distance = point_distance(x, y,obj_cha_x, obj_cha_y);

// khoảng cách đuổi
if (distance < 500) {
    move_towards_point(obj_cha_x, obj_cha_y, 2);
}

 