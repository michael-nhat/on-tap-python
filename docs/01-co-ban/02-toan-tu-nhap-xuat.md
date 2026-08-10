# ➕ Bài 2: Toán Tử & Nhập Xuất Trong Python

## 1. Nhập & Xuất Dữ Liệu (Input / Output)

### Xuất dữ liệu với `print()`

Hàm `print()` dùng để in giá trị ra màn hình. Hỗ trợ định dạng chuỗi hiện đại bằng **f-string**.

```python
name = "Python"
version = 3.12

# Sử dụng f-string (Khuyên dùng)
print(f"Chào mừng bạn đến với {name} phiên bản {version}!")

# Tùy chỉnh ký tự phân cách (sep) và kết thúc (end)
print("A", "B", "C", sep=" - ")  # Output: A - B - C
print("Dòng 1", end=" | ")
print("Dòng 2")                  # Output: Dòng 1 | Dòng 2
```

### Nhập dữ liệu với `input()`

Mặc định hàm `input()` luôn trả về giá trị kiểu **Chuỗi (`str`)**. Do đó khi nhập số, ta phải ép kiểu.

```python
# Nhập chuỗi
user_name = input("Nhập tên của bạn: ")

# Nhập số nguyên
age = int(input("Nhập tuổi: "))

# Nhập số thực
height = float(input("Nhập chiều cao (m): "))
```

---

## 2. Các Toán Tử Cơ Bản

### a. Toán tử số học

| Toán tử | Ý nghĩa | Ví dụ (`a = 10, b = 3`) | Kết quả |
| :--- | :--- | :--- | :--- |
| `+` | Cộng | `a + b` | `13` |
| `-` | Trừ | `a - b` | `7` |
| `*` | Nhân | `a * b` | `30` |
| `/` | Chia (trả về float) | `a / b` | `3.3333...` |
| `//` | Chia lấy phần nguyên | `a // b` | `3` |
| `%` | Chia lấy phần dư | `a % b` | `1` |
| `**` | Lũy thừa | `a ** b` | `1000` |

### b. Toán tử so sánh (Trả về `True` / `False`)

- `==` (Bằng), `!=` (Khác)
- `>` (Lớn hơn), `<` (Nhỏ hơn)
- `>=` (Lớn hơn hoặc bằng), `<=` (Nhỏ hơn hoặc bằng)

### c. Toán tử Logic

- `and`: Trả về `True` nếu **cả hai** biểu thức đều đúng.
- `or`: Trả về `True` nếu **ít nhất một** biểu thức đúng.
- `not`: Phủ định giá trị logic (`not True` thành `False`).

```python
x = 15
is_valid = (x > 10) and (x < 20)  # True
```
