is_talking = false;             // Biến kiểm tra có đang trò chuyện không
dialogue_step = 0;              // Bước hiện tại trong hội thoại
selected_option = 0;            // Lựa chọn hiện tại của người chơi
is_first_choice = true;         // Biến kiểm tra có phải là lựa chọn đầu tiên không
// Các bước hội thoại
dialogue_steps = [
    "Cau muon di vao khu rung phia truoc a?",
	"No rat nguy hiem, ban co chac chan muon di vao khong?",
];

// Các lựa chọn cho người chơi
dialogue_choices = [
    "Dung vay",
    "Khong"
];
next_choices = [
    "Toi chac chan",
    "Khong"
];
