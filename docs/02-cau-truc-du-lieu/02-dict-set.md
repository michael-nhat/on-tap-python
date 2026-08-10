# Dictionary & Set trong Python

## 1. Dictionary (Từ điển)

Dictionary là một cấu trúc dữ liệu lưu trữ các phần tử dưới dạng cặp **Key: Value** (Khóa: Giá trị).
- **Key** phải là duy nhất và là các kiểu dữ liệu không thay đổi (như string, number, tuple).
- **Value** có thể là bất kỳ kiểu dữ liệu nào.

### 1.1 Khai báo Dictionary
```python
# Khai báo rỗng
my_dict = {}
my_dict = dict()

# Khai báo có dữ liệu
student = {
    "name": "Nguyen Van A",
    "age": 20,
    "major": "Computer Science"
}
```

### 1.2 Truy cập và Cập nhật
```python
# Lấy giá trị thông qua Key
print(student["name"])  # Output: Nguyen Van A

# Khuyến nghị: dùng phương thức get() để tránh lỗi nếu Key không tồn tại
print(student.get("score", "Không tìm thấy")) 

# Thêm/Cập nhật phần tử
student["score"] = 9.5  # Thêm mới vì 'score' chưa có
student["age"] = 21     # Cập nhật vì 'age' đã tồn tại
```

### 1.3 Xóa phần tử
```python
# Dùng pop() - trả về value bị xóa
age = student.pop("age")

# Dùng del
del student["major"]
```

### 1.4 Duyệt qua Dictionary
```python
# Lấy danh sách keys, values
keys = student.keys()
values = student.values()

# Duyệt cả key và value
for key, value in student.items():
    print(f"{key}: {value}")
```

---

## 2. Set (Tập hợp)

Set là một cấu trúc dữ liệu không có thứ tự và **không chứa các phần tử trùng lặp**. Set cực kỳ hữu ích khi bạn muốn loại bỏ các giá trị trùng nhau hoặc thực hiện các phép toán tập hợp toán học (Giao, Hợp, Hiệu).

### 2.1 Khai báo Set
```python
# Lưu ý: {} là dict rỗng, để khai báo set rỗng dùng set()
my_set = set()

# Khai báo có dữ liệu
numbers = {1, 2, 3, 3, 4, 1}
print(numbers)  # Output: {1, 2, 3, 4} (Tự động xóa phần tử trùng)
```

### 2.2 Thêm và Xóa phần tử
```python
my_set.add(5)
my_set.remove(5) # Lỗi nếu không tồn tại
my_set.discard(5) # Bỏ qua nếu không tồn tại
```

### 2.3 Các phép toán tập hợp
```python
set_a = {1, 2, 3}
set_b = {3, 4, 5}

# Hợp (Union) - Lấy tất cả
print(set_a | set_b)  # {1, 2, 3, 4, 5}

# Giao (Intersection) - Lấy phần chung
print(set_a & set_b)  # {3}

# Hiệu (Difference) - Có trong A nhưng không có trong B
print(set_a - set_b)  # {1, 2}
```
