is_talking = false;             // Biến kiểm tra có đang trò chuyện không
dialogue_step = 0;              // Bước hiện tại trong hội thoại
selected_option = 0;            // Lựa chọn hiện tại của người chơi
is_first_choice = true;         // Biến kiểm tra có phải là lựa chọn đầu tiên không
// Các bước hội thoại
dialogue_steps = [
    "Chao ban, ban co the giup toi duoc khong?",
	"toi la lam cu to hien nay toi dang khong co ny ban co the giup toi kiem duoc khong?"
];

// Các lựa chọn cho người chơi
dialogue_choices = [
    "Co",
    "Khong"
];
next_choices = [
    "toi se giup ban",
    "ke con me ban"
];
