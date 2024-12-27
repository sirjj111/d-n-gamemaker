/// @description Insert description here
// You can write your code in this editor
// Tọa độ điểm chỉ định
var x_target = 671; // X của điểm chỉ định
var y_target = 7; // Y của điểm chỉ định

// Kiểm tra nếu nhân vật đến gần điểm chỉ định (hoặc chính xác)
if (distance_to_point(x_target, y_target) < 5|| distance_to_point(x_target + 40, y_target) < 5) {
    // Khi nhân vật đến điểm chỉ định, chuyển sang phòng mới
    room_goto(mapthu2); // room2 là phòng bạn muốn chuyển đến
}
