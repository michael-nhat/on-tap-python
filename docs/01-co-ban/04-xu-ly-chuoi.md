# Xử lý Chuỗi (String)

Chuỗi (string) trong Python là một dãy các ký tự được đặt trong dấu nháy đơn `'...'` hoặc nháy kép `"..."`. Chuỗi trong Python là kiểu dữ liệu không thể thay đổi (immutable).

## 1. Các thao tác cơ bản

### 1.1 Khai báo chuỗi
```python
s1 = 'Hello'
s2 = "Python"
s3 = '''Đây là chuỗi
nhiều dòng'''
```

### 1.2 Nối chuỗi và lặp chuỗi
```python
# Nối chuỗi
s = "Hello" + " " + "World"  # "Hello World"

# Lặp chuỗi
s = "A" * 3  # "AAA"
```

### 1.3 Truy cập ký tự (Indexing và Slicing)
```python
s = "Python"
print(s[0])    # 'P'
print(s[-1])   # 'n' (ký tự cuối)
print(s[1:4])  # 'yth' (từ vị trí 1 đến 3)
print(s[::-1]) # 'nohtyP' (đảo ngược chuỗi)
```

## 2. Các phương thức xử lý chuỗi phổ biến

Python cung cấp rất nhiều phương thức (method) được tích hợp sẵn để xử lý chuỗi:

| Phương thức | Chức năng | Ví dụ |
|-------------|-----------|-------|
| `len(s)` | Độ dài chuỗi | `len("abc")` -> 3 |
| `upper()` | Chuyển thành in hoa | `"abc".upper()` -> `"ABC"` |
| `lower()` | Chuyển thành in thường | `"ABC".lower()` -> `"abc"` |
| `strip()` | Xóa khoảng trắng 2 đầu | `" a ".strip()` -> `"a"` |
| `split()` | Tách chuỗi thành list | `"a,b".split(",")` -> `['a', 'b']` |
| `join()` | Nối list thành chuỗi | `"-".join(["a", "b"])` -> `"a-b"` |
| `replace()` | Thay thế chuỗi con | `"abc".replace("a", "x")` -> `"xbc"` |
| `find()` | Tìm vị trí chuỗi con | `"abc".find("b")` -> 1 |

## 3. Định dạng chuỗi (String Formatting)

### 3.1 Dùng F-string (Python 3.6+)
Đây là cách phổ biến và khuyên dùng nhất:
```python
name = "Alice"
age = 20
print(f"Tên: {name}, Tuổi: {age}")
```

### 3.2 Dùng hàm `format()`
```python
print("Tên: {}, Tuổi: {}".format(name, age))
```
