// Vẽ thanh máu quái
var enemy_bar_width = 200; // Chiều rộng thanh máu quái
var enemy_bar_height = 20; // Chiều cao thanh máu quái
var enemy_bar_x = (room_width - enemy_bar_width) / 2; // Căn giữa theo chiều ngang
var enemy_bar_y = 20; // Khoảng cách từ trên xuống

// Tỷ lệ máu còn lại của quái
var enemy_hp_ratio = max(global.enemy_stats.hp / 100, 0);

// Vẽ nền thanh máu
draw_set_color(c_red);
draw_rectangle(enemy_bar_x, enemy_bar_y, enemy_bar_x + enemy_bar_width, enemy_bar_y + enemy_bar_height, false);

// Vẽ máu còn lại
draw_set_color(c_green);
draw_rectangle(enemy_bar_x, enemy_bar_y, enemy_bar_x + (enemy_bar_width * enemy_hp_ratio), enemy_bar_y + enemy_bar_height, false);

// Vẽ viền thanh máu
draw_set_color(c_white);
draw_rectangle(enemy_bar_x, enemy_bar_y, enemy_bar_x + enemy_bar_width, enemy_bar_y + enemy_bar_height, true);

// Vẽ thanh máu người chơi
var player_bar_width = 200; // Chiều rộng thanh máu người chơi
var player_bar_height = 20; // Chiều cao thanh máu người chơi
var player_bar_x = room_width - player_bar_width - 20; // Góc phải, cách mép 20px
var player_bar_y = room_height - player_bar_height - 20; // Góc dưới, cách mép 20px

// Tỷ lệ máu còn lại của người chơi
var player_hp_ratio = max(global.player_stats.hp / 100, 0);

// Vẽ nền thanh máu
draw_set_color(c_red);
draw_rectangle(player_bar_x, player_bar_y, player_bar_x + player_bar_width, player_bar_y + player_bar_height, false);

// Vẽ máu còn lại
draw_set_color(c_green);
draw_rectangle(player_bar_x, player_bar_y, player_bar_x + (player_bar_width * player_hp_ratio), player_bar_y + player_bar_height, false);

// Vẽ viền thanh máu
draw_set_color(c_white);
draw_rectangle(player_bar_x, player_bar_y, player_bar_x + player_bar_width, player_bar_y + player_bar_height, true);

// Hiển thị thông tin máu
draw_set_color(c_white);
draw_text(enemy_bar_x + enemy_bar_width / 2, enemy_bar_y - 10, "Enemy HP: " + string(global.enemy_stats.hp));
draw_text(player_bar_x + player_bar_width / 2, player_bar_y - 10, "Player HP: " + string(global.player_stats.hp));

// Hiển thị yêu cầu bấm space để tấn công ở góc dưới bên trái
if (battle_turn == "player" && !waiting_for_turn) {
    draw_set_color(c_white);
    draw_text(20, room_height - 30, "Bam SPACE de tan cong!");
}

// Hiển thị thông báo chờ đến lượt ở góc trên bên trái
if (waiting_for_turn) {
    draw_set_color(c_white);
    draw_text(20, 40, "Cho den luot...");
}
