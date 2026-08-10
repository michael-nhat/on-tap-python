# Lập trình Hướng đối tượng (OOP)

Lập trình hướng đối tượng (Object-Oriented Programming - OOP) là một mô hình lập trình dựa trên khái niệm "đối tượng" (Object). Khác với lập trình thủ tục chỉ tập trung vào các hàm, OOP gom nhóm dữ liệu (thuộc tính) và các hàm xử lý dữ liệu đó (phương thức) lại với nhau.

OOP trong Python xoay quanh 5 khái niệm cốt lõi: **Class, Object, Đóng gói, Kế thừa, Đa hình**.

---

## 1. Class (Lớp) và Object (Đối tượng)

- **Class (Lớp):** Là một bản thiết kế (blueprint) hoặc khuôn mẫu. Nó định nghĩa các thuộc tính (đặc điểm) và phương thức (hành động) chung.
- **Object (Đối tượng):** Là một thực thể cụ thể được tạo ra từ Class. 

```python
# Khai báo Class
class Animal:
    # Hàm khởi tạo (Constructor)
    def __init__(self, name, age):
        self.name = name  # Thuộc tính
        self.age = age

    # Phương thức (Method)
    def speak(self):
        print(f"{self.name} đang phát ra tiếng kêu.")

# Tạo Object từ Class
cat = Animal("Mimi", 2)
dog = Animal("Milu", 3)

# Truy cập thuộc tính và phương thức
print(cat.name)   # Output: Mimi
dog.speak()       # Output: Milu đang phát ra tiếng kêu.
```

