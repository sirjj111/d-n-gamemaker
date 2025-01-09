if(global.chedo=="de") {
if (battle_ongoing && !waiting_for_turn) {
    if (battle_turn == "player") {
        // Chờ người chơi hành động
        if (keyboard_check_pressed(vk_space)) {
            // Gây sát thương ngẫu nhiên
            var damage = irandom_range(5, 15) - global.enemy_stats.defense;
            damage = max(damage,20); // Đảm bảo sát thương tối thiểu là 1
            global.enemy_stats.hp -= damage;
            show_message("Bạn tấn công! Gây " + string(damage) + " sát thương.");

            // Kiểm tra quái còn sống
			if (global.enemy_stats.hp <= 0) {
				// Khi quái vật bị tiêu diệt
global.enemy_destroyed = true;  // Cập nhật biến toàn cục để báo rằng quái vật đã bị tiêu diệt
instance_destroy();  // Tiêu diệt quái vật trong room chiến đấu

			    // Thông báo quái đã chết
			    show_message("Quái đã chết!");
			        room_goto(phongketthucthang);
					
			}else {
                battle_turn = "enemy"; // Đổi lượt cho quái
                waiting_for_turn = true; // Bắt đầu chờ
                alarm[0] = room_speed * 1; // Delay 1 giây
            }
        }
    } else if (battle_turn == "enemy") {
        // Quái tấn công
        var damage = irandom_range(5, 15) - global.player_stats.defense;
        damage = max(damage, 5); // Đảm bảo sát thương tối thiểu là 1
        global.player_stats.hp -= damage;
        show_message("Quái tấn công! Gây " + string(damage) + " sát thương.");

        // Kiểm tra người chơi còn sống
        if (global.player_stats.hp <= 0) {
            show_message("Bạn đã thua!");
            battle_ongoing = false;
            room_goto(phongketthucthua); // Khởi động lại phòng hiện tại
        } else {
            battle_turn = "player"; // Đổi lượt cho người chơi
            waiting_for_turn = true; // Bắt đầu chờ
            alarm[0] = room_speed * 1; // Delay 1 giây
        }
    }
}
if (global.last_room == undefined) {
    show_debug_message("global.last_room bị undefined!");
} else {
    show_debug_message("global.last_room: " + string(global.last_room));
}
}
if(global.chedo=="kho") {
	if (battle_ongoing && !waiting_for_turn) {
    if (battle_turn == "player") {
        // Chờ người chơi hành động
        if (keyboard_check_pressed(vk_space)) {
            // Gây sát thương ngẫu nhiên
            var damage = irandom_range(5, 15) - global.enemy_stats.defense;
            damage = max(damage,20); // Đảm bảo sát thương tối thiểu là 1
            global.enemy_stats.hp -= damage;
            show_message("Bạn tấn công! Gây " + string(damage) + " sát thương.");

            // Kiểm tra quái còn sống
			if (global.enemy_stats.hp <= 0) {
				// Khi quái vật bị tiêu diệt
global.enemy_destroyed = true;  // Cập nhật biến toàn cục để báo rằng quái vật đã bị tiêu diệt
instance_destroy();  // Tiêu diệt quái vật trong room chiến đấu

			    // Thông báo quái đã chết
			    show_message("Quái đã chết!");
			        room_goto(phongketthucthang);
					
			}else {
                battle_turn = "enemy"; // Đổi lượt cho quái
                waiting_for_turn = true; // Bắt đầu chờ
                alarm[0] = room_speed * 1; // Delay 1 giây
            }
        }
    } else if (battle_turn == "enemy") {
        // Quái tấn công
        var damage = irandom_range(5, 15) - global.player_stats.defense;
        damage = max(damage, 50); // Đảm bảo sát thương tối thiểu là 1
        global.player_stats.hp -= damage;
        show_message("Quái tấn công! Gây " + string(damage) + " sát thương.");

        // Kiểm tra người chơi còn sống
        if (global.player_stats.hp <= 0) {
            show_message("Bạn đã thua!");
            battle_ongoing = false;
            room_goto(phongketthucthua); // Khởi động lại phòng hiện tại
        } else {
            battle_turn = "player"; // Đổi lượt cho người chơi
            waiting_for_turn = true; // Bắt đầu chờ
            alarm[0] = room_speed * 1; // Delay 1 giây
        }
    }
}
if (global.last_room == undefined) {
    show_debug_message("global.last_room bị undefined!");
} else {
    show_debug_message("global.last_room: " + string(global.last_room));
}
}