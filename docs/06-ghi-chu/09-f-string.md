# Bản chất của cú pháp f-string trong Python

Trong Python, khi định nghĩa hoặc khởi tạo một chuỗi, chúng ta thường thấy cú pháp có chữ `f` đứng trước dấu nháy, ví dụ: `f\"Hello, {name}!\"`. Cú pháp này được gọi là **f-string** (Formatted String Literals), được giới thiệu từ phiên bản Python 3.6.

## Cú pháp cơ bản

F-string được bắt đầu bằng chữ `f` hoặc `F` ngay trước dấu mở chuỗi (nháy đơn hoặc kép). Bên trong chuỗi, các biến hoặc biểu thức Python được đặt trong cặp ngoặc nhọn `{}`.

```python
name = \"Alice\"
age = 20
text = f\"Tên tôi là {name}, năm nay tôi {age} tuổi.\"
print(text)
# Output: Tên tôi là Alice, năm nay tôi 20 tuổi.
```

## Bản chất của f-string là gì?

Thực chất, f-string không phải là một chuỗi hằng tĩnh (static string) bình thường. Bản chất của nó là một **biểu thức được đánh giá (evaluate) ngay tại thời điểm chạy (runtime)**.

Khi Python thực thi dòng lệnh chứa f-string, trình thông dịch sẽ thực hiện các bước sau:
1. Tìm tất cả các biểu thức nằm trong cặp ngoặc nhọn `{}`.
2. Thực thi và tính toán giá trị của các biểu thức đó.
3. Chuyển đổi các giá trị kết quả thành chuỗi (gọi hàm ngầm định như `__format__()` hoặc `str()`).
4. Nối các chuỗi kết quả đó với các phần văn bản tĩnh xung quanh để tạo thành một chuỗi hoàn chỉnh duy nhất.

Nhờ việc đánh giá tại runtime, bạn có thể đưa các phép toán phức tạp, gọi hàm, hoặc sử dụng các phương thức trực tiếp ngay bên trong `{}`:

```python
x = 10
y = 20
# Thực hiện phép toán trực tiếp trong {}
print(f\"Tổng của {x} và {y} là {x + y}\")

# Gọi phương thức của chuỗi ngay trong {}
word = \"python\"
print(f\"Ngôn ngữ {word.upper()} rất phổ biến.\")
```

## Ưu điểm của f-string

So với các phương pháp định dạng chuỗi cũ (như dùng toán tử `%` hay phương thức `.format()`), f-string mang lại những ưu điểm vượt trội:

1. **Ngắn gọn và dễ đọc hơn rất nhiều:** Không cần phải tách biệt chuỗi và biến cần truyền vào. Biến nằm ngay tại vị trí mà nó sẽ hiển thị.
2. **Hiệu suất (Tốc độ) nhanh hơn:** Vì f-string được trình biên dịch Python đánh giá ngay tại runtime và chuyển thành các chỉ thị nối chuỗi tối ưu ở mức bytecode, nó chạy nhanh hơn nhiều so với việc gọi hàm như `.format()`.
3. **Tính năng mạnh mẽ:** Hỗ trợ định dạng số liệu nhanh chóng. Đặc biệt từ Python 3.8, f-string hỗ trợ thêm cú pháp `=` rất tiện cho việc debug.

Từ Python 3.8, khi bạn thêm dấu = vào bên trong f-string (ví dụ: f"{bien=}"), Python sẽ tự động in ra cả tên biến (hoặc biểu thức) và giá trị của nó.

```python
pi = 3.14159265
# Định dạng làm tròn 2 chữ số thập phân
print(f\"Số Pi làm tròn 2 chữ số: {pi:.2f}\")

# Tính năng debug (Python 3.8+): In nhanh tên biến và giá trị của nó
user_id = 404
print(f\"{user_id=}\")
# Output: user_id=404
```
