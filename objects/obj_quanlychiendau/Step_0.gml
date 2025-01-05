if (battle_ongoing && !waiting_for_turn) {
    if (battle_turn == "player") {
        // Chờ người chơi hành động
        if (keyboard_check_pressed(vk_space)) {
            // Gây sát thương ngẫu nhiên
            var damage = irandom_range(5, 15) - global.enemy_stats.defense;
            damage = max(damage, 100); // Đảm bảo sát thương tối thiểu là 1
            global.enemy_stats.hp -= damage;
            show_message("Bạn tấn công! Gây " + string(damage) + " sát thương.");

            // Kiểm tra quái còn sống
			if (global.enemy_stats.hp <= 0) {
			    // Thông báo quái đã chết
			    show_message("Quái đã chết!");
			        room_goto(global.last_room);
			}else {
                battle_turn = "enemy"; // Đổi lượt cho quái
                waiting_for_turn = true; // Bắt đầu chờ
                alarm[0] = room_speed * 2; // Delay 2 giây
            }
        }
    } else if (battle_turn == "enemy") {
        // Quái tấn công
        var damage = irandom_range(5, 15) - global.player_stats.defense;
        damage = max(damage, 1); // Đảm bảo sát thương tối thiểu là 1
        global.player_stats.hp -= damage;
        show_message("Quái tấn công! Gây " + string(damage) + " sát thương.");

        // Kiểm tra người chơi còn sống
        if (global.player_stats.hp <= 0) {
            show_message("Bạn đã thua!");
            battle_ongoing = false;
            room_restart(); // Khởi động lại phòng hiện tại
        } else {
            battle_turn = "player"; // Đổi lượt cho người chơi
            waiting_for_turn = true; // Bắt đầu chờ
            alarm[0] = room_speed * 2; // Delay 2 giây
        }
    }
}
if (global.last_room == undefined) {
    show_debug_message("global.last_room bị undefined!");
} else {
    show_debug_message("global.last_room: " + string(global.last_room));
}
