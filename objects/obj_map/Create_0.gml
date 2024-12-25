 /// @description Insert description here
// You can write your code in this editor
// Tạo nhân vật tương ứng theo lựa chọn toàn cục
    if (global.selected_character == 1) {
        instance_create_layer(691, 718, "Instances", dichuyen_kysi);
    } else if (global.selected_character == 2) {
        instance_create_layer(691, 718, "Instances", dichuyen_thosan); 
    } else if (global.selected_character == 3) {
        instance_create_layer(691, 718, "Instances", dichuyen_dodon);
    }
	else {
        instance_create_layer(691, 718, "Instances", dichuyen_phapsu);
    } 
