 /// @description Insert description here
// You can write your code in this editor
// Tạo nhân vật tương ứng theo lựa chọn toàn cục
    if (global.selected_character == 1) {
        instance_create_layer(691, 718, "Instances", kysimove);
    } else if (global.selected_character == 2) {
        instance_create_layer(691, 718, "Instances", thosanmove); 
    } else if (global.selected_character == 3) {
        instance_create_layer(691, 718, "Instances", tankermove);
    }
	else {
        instance_create_layer(691, 718, "Instances", phapsumove);
    } 
