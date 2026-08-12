# Giới thiệu về Phần mềm Quản lý Dự án và Đóng gói

Khi viết một phần mềm, hiếm khi bạn tự viết mọi thứ từ đầu đến cuối (from scratch). Thay vào đó, bạn sẽ sử dụng lại mã nguồn của người khác đã viết sẵn để giải quyết các vấn đề chung (ví dụ: gửi request mạng, vẽ biểu đồ, tính toán ma trận...). Các đoạn code được đóng gói sẵn này gọi là các **Thư viện (Libraries)** hoặc **Gói (Packages)**.

## 1. Trình quản lý gói (Package Manager) là gì?
Package Manager là một công cụ giúp tự động hóa quá trình cài đặt, nâng cấp, cấu hình và gỡ bỏ các thư viện/phần mềm.
Thay vì phải lên mạng tải file zip, giải nén, copy vào thư mục dự án một cách thủ công (và đôi khi các thư viện lại phụ thuộc vào các thư viện khác tạo thành một mớ bòng bong), Package Manager sẽ lo hết mọi thứ chỉ bằng một câu lệnh.

## 2. Các Package Manager phổ biến
Mỗi ngôn ngữ lập trình thường đi kèm với một hệ sinh thái và trình quản lý gói riêng:

### 2.1 Pip (Python)
- **Pip** (Pip Installs Packages) là trình quản lý gói mặc định của Python.
- Các gói Python được chia sẻ tại [PyPI (Python Package Index)](https://pypi.org/).
- **Cách dùng cơ bản:**
  - Cài đặt một thư viện: `pip install requests` (ví dụ tải thư viện requests để gọi API).
  - Gỡ cài đặt: `pip uninstall requests`.
  - Lưu danh sách thư viện dự án: `pip freeze > requirements.txt`.
  - Cài lại toàn bộ thư viện cho dự án: `pip install -r requirements.txt`.

### 2.2 npm (Node.js / JavaScript)
- **npm** (Node Package Manager) là trình quản lý gói khổng lồ của thế giới JavaScript. Nó quản lý mọi thứ từ các thư viện frontend (React, Vue) đến backend (Express).
- **Cách dùng cơ bản:**
  - Khởi tạo dự án: `npm init` (Tạo ra file `package.json` chứa thông tin dự án).
  - Cài đặt thư viện: `npm install axios` (Tải về thư mục `node_modules`).
  - Chạy kịch bản: `npm run dev` hoặc `npm start`.

## 3. Tóm lại
Hiểu và biết cách sử dụng các công cụ quản lý package và dự án là kỹ năng sống còn giúp bạn tận dụng sức mạnh của cộng đồng mã nguồn mở, tránh việc "phát minh lại chiếc bánh xe".
