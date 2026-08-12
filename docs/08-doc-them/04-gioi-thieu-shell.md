# Giới thiệu về Shell và Các câu lệnh, Tiện ích cơ bản

Đối với lập trình viên, làm quen với giao diện dòng lệnh (Command Line Interface - CLI) là một kỹ năng bắt buộc. Trung tâm của giao diện này chính là **Shell**.

## 1. Shell là gì?
Shell là một chương trình phần mềm đóng vai trò là cầu nối giao tiếp giữa người dùng và Hệ điều hành. Nó nhận các dòng lệnh bạn gõ từ bàn phím, diễn dịch (interpret) chúng và ra lệnh cho Hệ điều hành thực thi, sau đó in kết quả ra màn hình.

Các loại Shell phổ biến:
- **Bash (Bourne Again SHell):** Phổ biến nhất, thường là mặc định trên Linux và macOS cũ.
- **Zsh (Z Shell):** Nhiều tính năng và plugin mạnh mẽ, là mặc định trên macOS hiện tại.
- **PowerShell / CMD:** Thường dùng trên hệ điều hành Windows.

## 2. Các câu lệnh Shell cơ bản

Việc sử dụng chuột để thao tác file rất trực quan, nhưng sử dụng lệnh shell sẽ giúp tự động hóa và tăng tốc độ làm việc lên rất nhiều.

### 2.1 Điều hướng thư mục
- `pwd` (Print Working Directory): Hiển thị đường dẫn của thư mục hiện tại bạn đang đứng.
- `ls` (List): Liệt kê các file và thư mục con trong thư mục hiện tại. Dùng `ls -l` để xem chi tiết, `ls -a` để xem cả file ẩn.
- `cd <đường-dẫn>` (Change Directory): Di chuyển sang thư mục khác. Ví dụ: `cd Desktop` hoặc `cd ..` để lùi ra ngoài một cấp.

### 2.2 Thao tác với File và Thư mục
- `touch <tên-file>`: Tạo một file mới trống.
- `mkdir <tên-thư-mục>` (Make Directory): Tạo một thư mục mới.
- `cp <nguồn> <đích>` (Copy): Sao chép file hoặc thư mục.
- `mv <nguồn> <đích>` (Move): Di chuyển file, cũng dùng để đổi tên file.
- `rm <tên-file>` (Remove): Xóa file. (Lưu ý: `rm -r <thư-mục>` dùng để xóa toàn bộ thư mục và nội dung bên trong).

### 2.3 Các tiện ích hữu dụng khác
- `cat <tên-file>`: In toàn bộ nội dung của file ra màn hình.
- `echo "Nội dung"`: In một chuỗi ra màn hình.
- `grep "từ khóa" <tên-file>`: Tìm kiếm một từ khóa bên trong file.
- `clear` (hoặc phím tắt Ctrl + L): Xóa sạch các text trên màn hình terminal cho gọn gàng.
