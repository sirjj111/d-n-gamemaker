
// Thông tin người chơi
global.player_stats = {
    hp: 100,
    attack: 15,
    defense: 8
}
global.enemy_stats = {
        hp: 100,      // Khởi tạo hp cho quái vật
        defense: 10,  // Khởi tạo defense cho quái vật (ví dụ)
        attack: 50    // Khởi tạo attack cho quái vật (ví dụ)
    }
battle_turn = "player"; // Lượt hiện tại: "player" hoặc "enemy"
battle_ongoing = true;  // Trạng thái chiến đấu
waiting_for_turn = false; // Kiểm soát chờ trong thời gian delay

