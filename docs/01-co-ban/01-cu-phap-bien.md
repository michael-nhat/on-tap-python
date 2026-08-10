# 📝 Bài 1: Cú Pháp, Biến & Kiểu Dữ Liệu Cơ Bản

## 1. Cú pháp cơ bản & Thụt lề (Indentation)

Khác với C/C++ hay Java dùng cặp ngoặc nhọn `{}` để phân chia khối lệnh, Python sử dụng **thụt lề (indentation)** làm cú pháp bắt buộc (thường dùng **4 khoảng trắng - 4 spaces**).

```python
# Đây là ghi chú đơn dòng trong Python

"""
Đây là ghi chú
nhiều dòng trong Python
"""

if True:
    print("Khối lệnh đúng thụt lề 4 khoảng trắng")
```

---

## 2. Khai báo Biến (Variables)

Trong Python, bạn **không cần khai báo kiểu dữ liệu trước**. Kiểu của biến được xác định tự động dựa trên giá trị gán cho nó (Dynamic Typing).

```python
age = 18           # Kiểu số nguyên (int)
gpa = 3.85         # Kiểu số thực (float)
name = "Nguyễn Văn A" # Kiểu chuỗi (str)
is_passed = True   # Kiểu Boolean (bool)
```

!!! note "Quy tắc đặt tên biến"
    - Chỉ chứa chữ cái (`a-z`, `A-Z`), chữ số (`0-9`) và dấu gạch dưới (`_`).
    - Bắt đầu bằng chữ cái hoặc dấu gạch dưới `_`, **không** bắt đầu bằng chữ số.
    - Phân biệt chữ hoa và chữ thường (`age` khác `Age`).
    - Nên sử dụng chuẩn **snake_case** (ví dụ: `student_name`, `total_score`).

---

## 3. Các Kiểu Dữ Liệu Cơ Bản

| Kiểu dữ liệu | Tên trong Python | Ví dụ | Mô tả |
| :--- | :--- | :--- | :--- |
| Số nguyên | `int` | `10`, `-25`, `0` | Biểu diễn số nguyên không có phần thập phân |
| Số thực | `float` | `3.14`, `-0.01`, `2.0` | Biểu diễn số có dấu phẩy động |
| Chuỗi ký tự | `str` | `"Python"`, `'Hello'` | Đặt trong cặp dấu ngoặc đơn hoặc ngoặc kép |
| Boolean | `bool` | `True`, `False` | Giá trị đúng hoặc sai |

### Kiểm tra kiểu dữ liệu & Ép kiểu (Type Conversion)

```python
x = 100
print(type(x))  # Output: <class 'int'>

# Ép kiểu dữ liệu (Typecasting)
s = "123"
num = int(s)    # Chuyển chuỗi "123" thành số nguyên 123
f = float(x)    # Chuyển số nguyên 100 thành số thực 100.0
st = str(gpa)   # Chuyển số 3.85 thành chuỗi "3.85"
```
