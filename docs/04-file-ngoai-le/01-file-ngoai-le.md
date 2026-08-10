# Xử lý File & Ngoại lệ

## 1. Xử lý File trong Python

Việc thao tác với file (đọc, ghi) trong Python rất đơn giản nhờ hàm `open()`. Có nhiều chế độ mở file (mode) khác nhau:
- `'r'` (Read): Chế độ đọc (mặc định). Lỗi nếu file không tồn tại.
- `'w'` (Write): Chế độ ghi. Ghi đè lên file cũ hoặc tạo file mới.
- `'a'` (Append): Chế độ ghi tiếp. Ghi thêm vào cuối file.

### 1.1 Đọc File
Bạn nên sử dụng câu lệnh `with` khi làm việc với file để đảm bảo file luôn được đóng lại một cách an toàn.
```python
# Đọc toàn bộ nội dung
with open("data.txt", "r", encoding="utf-8") as file:
    content = file.read()
    print(content)

# Đọc từng dòng
with open("data.txt", "r", encoding="utf-8") as file:
    for line in file:
        print(line.strip())
```

### 1.2 Ghi File
```python
# Ghi đè nội dung mới (mode 'w')
with open("output.txt", "w", encoding="utf-8") as file:
    file.write("Dòng đầu tiên.\n")
    file.write("Dòng thứ hai.")

# Ghi nối thêm vào cuối file (mode 'a')
with open("output.txt", "a", encoding="utf-8") as file:
    file.write("\nDòng mới được nối thêm.")
```

---

## 2. Xử lý Ngoại lệ (Exceptions)

Khi chương trình gặp lỗi, Python sẽ văng ra một "ngoại lệ" (Exception) và dừng chương trình. Để bắt và xử lý lỗi mà không làm dừng chương trình, chúng ta dùng cấu trúc `try...except`.

### 2.1 Bắt lỗi cơ bản
```python
try:
    a = 10 / 0
except ZeroDivisionError:
    print("Lỗi: Không thể chia cho 0!")
```

### 2.2 Khối else và finally
- `else`: Chỉ chạy khi khối `try` KHÔNG có lỗi.
- `finally`: Luôn luôn chạy, bất kể có lỗi hay không (thường dùng để dọn dẹp bộ nhớ, đóng file).

```python
try:
    num = int(input("Nhập một số: "))
except ValueError:
    print("Bạn nhập không phải là số hợp lệ!")
else:
    print(f"Bình phương của số đó là: {num**2}")
finally:
    print("Kết thúc quá trình kiểm tra.")
```

### 2.3 Chủ động ném ra ngoại lệ (Raise)
Nếu muốn chủ động báo lỗi, bạn có thể dùng từ khóa `raise`.
```python
def kiem_tra_tuoi(tuoi):
    if tuoi < 0:
        raise ValueError("Tuổi không thể là số âm!")
    print(f"Tuổi của bạn là {tuoi}")

try:
    kiem_tra_tuoi(-5)
except ValueError as e:
    print(e)
```
