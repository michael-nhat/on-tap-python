# Hàm & Module trong Python

## 1. Hàm (Functions)

Hàm là một khối lệnh được đặt tên và có thể tái sử dụng để thực hiện một tác vụ cụ thể. Việc sử dụng hàm giúp code gọn gàng, dễ bảo trì và tránh lặp lại.

### 1.1 Khai báo hàm
Sử dụng từ khóa `def` để định nghĩa một hàm.
```python
def chao_hoi(ten):
    print(f"Xin chào {ten}!")

chao_hoi("Alice")  # Output: Xin chào Alice!
```

### 1.2 Trả về giá trị (Return)
Hàm có thể trả về một hoặc nhiều giá trị bằng từ khóa `return`.
```python
def cong(a, b):
    return a + b

ket_qua = cong(5, 3)
print(ket_qua)  # Output: 8
```

### 1.3 Tham số mặc định (Default Parameters)
Bạn có thể gán giá trị mặc định cho tham số.
```python
def gioi_thieu(ten, tuoi=18):
    print(f"Tôi là {ten}, {tuoi} tuổi.")

gioi_thieu("Bob")        # Output: Tôi là Bob, 18 tuổi.
gioi_thieu("Bob", 20)    # Output: Tôi là Bob, 20 tuổi.
```

### 1.4 Biến Args và Kwargs
- `*args`: Nhận nhiều tham số dưới dạng Tuple.
- `**kwargs`: Nhận nhiều tham số có tên dưới dạng Dictionary.

```python
def tinh_tong(*args):
    return sum(args)

print(tinh_tong(1, 2, 3, 4))  # Output: 10
```

---

## 2. Module & Package

Module là một file Python chứa các hàm, lớp, biến mà bạn có thể nhúng vào code của mình. Nó giúp chia nhỏ dự án lớn thành các phần dễ quản lý.

### 2.1 Import một module
Dùng từ khóa `import`.
```python
import math

print(math.sqrt(16))  # Output: 4.0
print(math.pi)        # Output: 3.14159...
```

### 2.2 Import cụ thể một hàm/biến
Dùng `from ... import ...`
```python
from math import sqrt, pi

print(sqrt(25))
```

### 2.3 Đặt tên bí danh (Alias)
```python
import numpy as np

arr = np.array([1, 2, 3])
```

### 2.4 Tự tạo Module
Bạn có thể tự tạo module bằng cách viết các hàm vào một file `.py` (ví dụ `tien_ich.py`):
```python
# File: tien_ich.py
def nhan_doi(x):
    return x * 2
```
Sau đó ở file khác bạn có thể gọi nó:
```python
import tien_ich
print(tien_ich.nhan_doi(5))
```
