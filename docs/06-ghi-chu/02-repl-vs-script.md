# 🐍 REPL vs Chạy Kịch Bản (Script): Sự Khác Biệt Và Sức Mạnh Của REPL

Khi mới học Python, bạn sẽ thường làm quen với khái niệm **REPL** (thường thấy qua Interactive Shell hay IDLE) và **chạy chương trình (script)**. Vậy chúng khác nhau như thế nào và tại sao REPL lại là công cụ cực kỳ đắc lực cho người mới học?

---

## 1. Nguồn Gốc Của Từ REPL

**REPL** là viết tắt của 4 từ:

- **R**ead (Đọc): Đọc dòng code bạn vừa nhập vào.
- **E**val (Đánh giá / Thực thi): Chạy đoạn code đó ngay lập tức.
- **P**rint (In ra): Hiển thị kết quả thực thi ra màn hình (nếu có).
- **L**oop (Lặp lại): Quay lại trạng thái ban đầu, chờ bạn nhập dòng lệnh tiếp theo.

Khái niệm REPL xuất phát từ ngôn ngữ lập trình Lisp vào những năm 1960. Từ đó đến nay, nó đã trở thành một phần không thể thiếu của các ngôn ngữ thông dịch (interpreted languages) như Python, Ruby, JavaScript...

---

## 2. Sự Khác Biệt Giữa REPL Và Chạy Script (Chương Trình Thật)

| Tính năng | REPL (Interactive Shell) | Chạy Script (File `.py`) |
| :--- | :--- | :--- |
| **Cách hoạt động** | Gõ dòng nào, chạy và ra kết quả ngay dòng đó. | Viết toàn bộ code vào file rồi mới chạy toàn bộ từ trên xuống dưới. |
| **Tính lưu trữ** | Các dòng code sẽ biến mất khi bạn đóng cửa sổ. | Code được lưu giữ lại lâu dài dưới dạng tệp văn bản. |
| **Mục đích chính** | Dùng để kiểm tra nhanh các đoạn code, xem kết quả tức thì. | Xây dựng các phần mềm, dự án có quy mô hoàn chỉnh. |
| **Tự động in giá trị**| Tự động hiển thị kết quả của một biểu thức mà không cần hàm `print()`. | Bắt buộc phải dùng `print()` nếu muốn thấy kết quả hiện ra màn hình. |

**Ví dụ trực quan:**
Trong REPL, nếu bạn gõ `3 + 5` và nhấn Enter, chương trình sẽ tự động phản hồi lại kết quả `8`.
Trong File Script, nếu bạn viết mỗi `3 + 5`, máy tính vẫn sẽ tính toán nhưng **không in gì ra màn hình cả**. Bạn bắt buộc phải viết rõ là `print(3 + 5)`.

---

## 3. Tại Sao REPL Giúp Tăng Phản Hồi Và Hiểu Sâu Về Code?

Trong học tập, vòng lặp phản hồi (Feedback Loop) càng ngắn, não bộ càng nhanh chóng nắm bắt và rút ra quy luật. REPL chính là "cỗ máy phản hồi tức thời" tuyệt vời:

1. **Thử nghiệm không sợ sai (Trial and Error):** Bạn thắc mắc một hàm hoạt động ra sao? Thay vì tạo file, lưu lại, và chạy qua terminal, bạn chỉ cần mở REPL, gõ hàm đó và thấy ngay nó đúng hay báo lỗi.
2. **"Mổ xẻ" vấn đề dễ dàng:** Khi một đoạn code dài bị lỗi, bạn có thể copy từng phần nhỏ khả nghi thả vào REPL để kiểm tra xem lỗi thực sự nằm ở đâu.
3. **Khám phá và tự học sâu:** Bạn có thể dùng hàm `help(tên_hàm)` hoặc `dir(tên_đối_tượng)` trực tiếp trong REPL để xem các tính năng của ngôn ngữ mà không cần mở trình duyệt tìm kiếm tài liệu.

!!! tip "Lời Khuyên"
    Hãy coi **REPL** như một "tờ giấy nháp" thông minh để thử nghiệm các giả thuyết của bạn, và coi **File Script** là cuốn "vở ghi chép" nơi bạn viết lại lời giải hoàn chỉnh sau khi đã hiểu rõ vấn đề.
