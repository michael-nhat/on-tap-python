# Dữ liệu Khả biến (Mutable) và Bất biến (Immutable)

Trong Python, mọi thứ đều là đối tượng (Object). Khi lập trình, một khái niệm cực kỳ quan trọng mà bạn phải nắm vững là **Khả biến (Mutable)** và **Bất biến (Immutable)**. Không hiểu rõ hai đặc tính này là nguyên nhân hàng đầu gây ra các lỗi (bug) rất khó phát hiện.

## 1. "Có thể thay đổi" ở đây nghĩa là gì?

Khi ta nói một kiểu dữ liệu là "Bất biến" (Immutable), không có nghĩa là cái biến đó bị khóa vĩnh viễn không được mang giá trị mới. Khái niệm này thực chất ám chỉ **vùng nhớ (địa chỉ RAM)** đang lưu trữ dữ liệu đó không thể bị chỉnh sửa. Nếu bạn gán một giá trị mới, Python sẽ âm thầm tạo ra một vùng nhớ mới tinh, đặt giá trị mới vào đó và trỏ cái tên biến của bạn sang chỗ mới. Vùng nhớ cũ sẽ bị thu hồi.

Ngược lại, với dữ liệu "Khả biến" (Mutable), bạn có thể **can thiệp trực tiếp vào bên trong vùng nhớ** để sửa, xóa, hoặc thêm bớt các phần tử nhỏ mà không làm thay đổi cái "vỏ" (địa chỉ vùng nhớ tổng thể) của biến đó.

## 2. Phân loại các kiểu dữ liệu

### 🔒 Kiểu Bất Biến (Immutable)
- Các loại số: Nguyên (`int`), Thực (`float`)
- Boolean (`bool`: True/False)
- Chuỗi ký tự (`str`)
- Bộ tĩnh (`tuple`)

*Ví dụ:*
```python
s = "Hello"
# Lệnh dưới đây sẽ báo lỗi vì chuỗi là bất biến, không cho phép sửa tận nơi:
# s[0] = "M"  

# Lệnh dưới đây lại hợp lệ, vì nó bứng cái mác 's' dán sang một vùng nhớ mới hoàn toàn
s = "Mello"   
```

### 🔓 Kiểu Khả Biến (Mutable)
- Danh sách (`list`)
- Từ điển (`dict`)
- Tập hợp (`set`)

*Ví dụ:*
```python
arr = [1, 2, 3]
arr[0] = 99  # Hợp lệ. Mảng bị thay đổi trực tiếp ngay tại vùng nhớ cũ.
# arr trở thành [99, 2, 3]
```

---

## 3. Lời khuyên "xương máu" khi làm bài thi

Sự khác biệt giữa 2 loại dữ liệu này dẫn đến các cạm bẫy rất lớn khi bạn copy biến hoặc truyền biến vào Hàm.

### 🚩 Cạm bẫy 1: Copy List (Danh sách)
Nếu bạn có một mảng `a` và muốn tạo mảng `b` giống hệt `a` để tính toán tạm thời:
```python
a = [1, 2, 3]
b = a         # LỖI SAI KINH ĐIỂN!
b[0] = 99

print(a)      # Output: [99, 2, 3] (a đã bị sửa theo b)
```
**Giải thích:** Vì `list` là kiểu Khả biến, phép gán `b = a` không hề tạo ra một mảng mới. Nó chỉ khiến `b` và `a` **cùng trỏ vào chung một vùng nhớ**. Bạn sửa `b` thì `a` cũng lãnh đủ.
👉 **Cách khắc phục:** Muốn copy ra một mảng độc lập, hãy dùng `b = a.copy()`, `b = a[:]`, hoặc `b = list(a)`.

### 🚩 Cạm bẫy 2: Lỗi tham chiếu khi tạo mảng 2 chiều
```python
# Tạo ma trận 3 hàng, 4 cột bằng toán tử *
matrix = [[0] * 4] * 3

matrix[0][0] = 9  
# Bạn kỳ vọng: hàng 1 cột 1 thành số 9, các hàng khác giữ nguyên số 0.
# Thực tế: Tất cả các hàng ở cột 1 đều biến thành số 9!
```
**Giải thích:** Toán tử `* 3` với List đã nhân bản "tham chiếu" (reference) của mảng `[0, 0, 0, 0]`. 3 hàng thực chất là 3 mũi tên chỉ vào cùng 1 mảng duy nhất trong bộ nhớ.
👉 **Cách khắc phục:** Luôn dùng List Comprehension: `matrix = [[0] * 4 for _ in range(3)]`.

### 💡 Tận dụng: Truyền tham số vào Hàm
- **Truyền kiểu Bất biến (int, str):** Hàm chỉ nhận được một *bản sao*. Mọi tính toán, chỉnh sửa bên trong hàm không hề ảnh hưởng đến biến gốc ở bên ngoài.
- **Truyền kiểu Khả biến (list, dict):** Hàm nhận được *tham chiếu* (reference). Bất kỳ lệnh `.append()`, sửa đổi phần tử nào bên trong hàm **cũng sẽ làm thay đổi biến gốc ở bên ngoài**.
👉 **Mẹo nhỏ:** Lợi dụng đặc tính này, trong các bài toán Đồ thị (Duyệt DFS/BFS), ta thường tạo mảng đánh dấu `visited` ở ngoài và truyền thẳng vào hàm đệ quy để nó tự cập nhật trạng thái liên tục mà không cần dùng lệnh `return` hay phải khai báo biến `global` rườm rà.
