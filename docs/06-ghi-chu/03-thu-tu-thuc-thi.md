# Thứ tự thực thi trong chương trình Python

Khác với một số ngôn ngữ biên dịch như C++ hay Java luôn bắt đầu thực thi từ hàm `main()`, Python là một ngôn ngữ thông dịch (interpreted language). Do đó, mã nguồn Python được đọc và thực thi **từ trên xuống dưới (top-to-bottom)**.

## 1. Trình tự đọc code của Python
Khi bạn chạy một file Python (ví dụ: `python script.py`), trình thông dịch sẽ làm các việc sau:
1. Đọc và thực thi các lệnh `import` ở đầu file.
2. Đọc các định nghĩa hàm (`def`) và lớp (`class`) nhưng **chưa chạy nội dung bên trong chúng**. Nó chỉ ghi nhận rằng các hàm/lớp này tồn tại trong bộ nhớ.
3. Thực thi trực tiếp bất kỳ câu lệnh nào nằm ngoài hàm/lớp theo thứ tự từ trên xuống dưới.

### Ví dụ cơ bản:
```python
print("1. Dòng này chạy đầu tiên")

def my_function():
    print("3. Dòng này chỉ chạy khi hàm được gọi")

print("2. Dòng này chạy thứ hai")

my_function()  # Gọi hàm
print("4. Dòng này chạy cuối cùng")
```

## 2. Block `if __name__ == "__main__":`
Đây là một "thủ thuật" cực kỳ phổ biến trong Python để kiểm soát thứ tự thực thi, đặc biệt khi file của bạn vừa có thể được chạy trực tiếp, vừa có thể được `import` vào một file khác.

- Biến đặc biệt `__name__` tự động được Python gán giá trị bằng chuỗi `"__main__"` nếu file đó là file chính đang được chạy.
- Nếu file đó bị `import` sang file khác, `__name__` sẽ mang tên của file (ví dụ: `"script"`).

```python
# file_chinh.py

def main():
    print("Chương trình chính bắt đầu chạy.")

if __name__ == "__main__":
    # Khối lệnh này CHỈ CHẠY khi bạn chạy trực tiếp file_chinh.py
    # Sẽ KHÔNG CHẠY nếu một file khác 'import file_chinh'
    main()
```

## 3. Lời khuyên khi thi đấu / làm dự án
- Luôn gom các đoạn code thực thi chính vào một hàm `main()`.
- Ở cuối file, gọi hàm `main()` bên trong khối `if __name__ == "__main__":`.
- Cách viết này giúp code của bạn gọn gàng, tránh việc các biến toàn cục (global variables) bị lẫn lộn và tăng hiệu năng một cách đáng kể (vì Python tối ưu hóa việc truy cập biến cục bộ trong hàm tốt hơn biến toàn cục).
