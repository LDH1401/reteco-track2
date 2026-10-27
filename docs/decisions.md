# Các quyết định thiết kế

## Memory chỉ là thí nghiệm tuỳ chọn, phạm vi một hội thoại
- Hội thoại ngắn (3–12 lượt, ~440 token) và mỗi hội thoại là một người dùng độc lập, nên lịch sử đưa thẳng vào prompt/truy vấn là đủ; không có memory xuyên hội thoại.
- `src/reteco/memory/` chỉ phục vụ thí nghiệm tuần 8: tái dùng tài liệu của lượt trước (`prev_docs`) và phát hiện chuyển chủ đề bằng độ tương đồng (`shift`).
- Bộ nhớ phải được xoá khi sang hội thoại mới; `tests/test_memory.py` kiểm tra điều này.
- Đo oracle (gold của lượt trước) trước; chỉ giữ nếu tăng điểm trên train mà dev không giảm.
