# 📦 Bài 4: Cấu Trúc Dữ Liệu List & Tuple

## 1. List (Danh sách mảng động)

`List` là tập hợp các phần tử **có thứ tự**, **có thể thay đổi (mutable)** và cho phép các phần tử trùng lặp.

### a. Khai báo & Truyduyệt chỉ số (Indexing)

```python
numbers = [10, 20, 30, 40, 50]

print(numbers[0])   # Phần tử đầu tiên: 10
print(numbers[-1])  # Phần tử cuối cùng: 50
```

### b. Kỹ thuật Cắt lát (Slicing): `list[start:stop:step]`

```python
fruits = ["táo", "chuối", "cam", "dâu", "xoài"]

print(fruits[1:4])   # ['chuối', 'cam', 'dâu']
print(fruits[:3])    # ['táo', 'chuối', 'cam']
print(fruits[::2])   # ['táo', 'cam', 'xoài'] (Bước nhảy 2)
print(fruits[::-1])  # Đảo ngược List
```

### c. Các phương thức phổ biến của List

```python
arr = [3, 1, 4, 1, 5]

arr.append(9)        # Thêm 9 vào cuối -> [3, 1, 4, 1, 5, 9]
arr.insert(1, 100)   # Chèn 100 vào vị trí index 1
arr.pop()            # Xóa & trả về phần tử cuối cùng
arr.remove(1)        # Xóa giá trị 1 đầu tiên tìm thấy
arr.sort()           # Sắp xếp tăng dần
arr.reverse()        # Đảo ngược danh sách
```

### d. List Comprehension (Tạo List ngắn gọn)

```python
# Tạo danh sách bình phương các số từ 1 đến 5
squares = [x**2 for x in range(1, 6)]
# Result: [1, 4, 9, 16, 25]

# Lọc các số chẵn
evens = [x for x in range(10) if x % 2 == 0]
# Result: [0, 2, 4, 6, 8]
```

---

## 2. Tuple (Bộ giá trị bất biến)

`Tuple` tương tự như List nhưng **không thể thay đổi (immutable)** sau khi tạo. Dùng để lưu trữ dữ liệu cố định không muốn bị sửa đổi.

```python
# Khai báo Tuple
point = (10, 20)
colors = ("red", "green", "blue")

# Truy cập phần tử
print(point[0])  # 10

# Phân rã Tuple (Unpacking)
x, y = point
print(f"X: {x}, Y: {y}")  # X: 10, Y: 20
```

!!! warning "Lưu ý"
    Thao tác gán sửa phần tử như `point[0] = 100` sẽ gây lỗi `TypeError: 'tuple' object does not support item assignment`.
