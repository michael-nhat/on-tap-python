# 🔀 Bài 3: Cấu Trúc Điều Khiển (Rẽ Nhánh & Vòng Lặp)

## 1. Câu Lệnh Rẽ Nhánh (`if - elif - else`)

Câu lệnh điều kiện dùng để thực thi các khối mã dựa trên điều kiện đúng/sai.

```python
score = 8.5

if score >= 9.0:
    print("Xếp loại: Xuất sắc")
elif score >= 8.0:
    print("Xếp loại: Giỏi")
elif score >= 6.5:
    print("Xếp loại: Khá")
else:
    print("Xếp loại: Trung bình / Yếu")
```

---

## 2. Câu Lệnh `match - case` (Switch - Case)

Từ Python 3.10, Python đã hỗ trợ cấu trúc `match - case` tương tự như `switch - case` trong các ngôn ngữ khác (C++, Java, Javascript...). Cấu trúc này giúp mã dễ đọc hơn khi kiểm tra giá trị của một biến.

```python
command = "start"

match command:
    case "start":
        print("Bắt đầu trò chơi.")
    case "stop":
        print("Kết thúc trò chơi.")
    case "pause":
        print("Tạm dừng.")
    case _:
        print("Lệnh không hợp lệ.")  # _ đóng vai trò như default
```

---

## 3. Vòng Lặp `for`

Vòng lặp `for` dùng để duyệt qua các phần tử trong một chuỗi, mảng, danh sách hoặc dùng với hàm `range()`.

### Cú pháp với `range(start, stop, step)`

```python
# In từ 0 đến 4
for i in range(5):
    print(i, end=" ")  # Output: 0 1 2 3 4

# In số chẵn từ 2 đến 10
for i in range(2, 11, 2):
    print(i, end=" ")  # Output: 2 4 6 8 10
```

---

## 4. Vòng Lặp `while`

Vòng lặp `while` lặp lại khối lệnh khi điều kiện còn đúng (`True`).

```python
count = 1
while count <= 5:
    print(f"Lần lặp thứ {count}")
    count += 1
```

---

## 5. Câu Lệnh Điều Điều Hướng Vòng Lặp

- `break`: Thoát khỏi vòng lặp ngay lập tức.
- `continue`: Bỏ qua phần còn lại của vòng lặp hiện tại và chuyển sang lần lặp tiếp theo.
- `pass`: Câu lệnh giữ chỗ (không làm gì cả, dùng khi chưa viết logic).

```python
# Ví dụ về break và continue
for i in range(1, 10):
    if i % 2 == 0:
        continue  # Bỏ qua số chẵn
    if i == 7:
        break     # Dừng vòng lặp khi gặp số 7
    print(i, end=" ")  # Output: 1 3 5
```
