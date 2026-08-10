# 🐍 Trang Kiến Thức & Ôn Tập Python (`on-tap-python`)

Trang web tài liệu ôn tập lập trình Python được xây dựng bằng **MkDocs Material** và tự động xuất bản thông qua **GitHub Pages**.

📍 **URL Xem Sau Khi Deploy**: `https://<ten-username-github>.github.io/on-tap-python/`

---

## 📁 Cấu trúc thư mục

```text
on-tap-python/
├── .github/
│   └── workflows/
│       └── deploy.yml          # GitHub Actions tự động build & deploy lên GitHub Pages
├── docs/                       # Thư mục chứa bài viết/nội dung Markdown
│   ├── index.md                # Trang chủ (Tổng quan lộ trình)
│   ├── 01-co-ban/
│   │   ├── 01-cu-phap-bien.md  # Cú pháp, Biến & Kiểu dữ liệu
│   │   ├── 02-toan-tu-nhap-xuat.md # Toán tử & Input/Output
│   │   └── 03-cau-truc-dieu-khien.md # Điều kiện & Vòng lặp
│   └── 02-cau-truc-du-lieu/
│       └── 01-list-tuple.md    # List & Tuple
├── mkdocs.yml                  # Cấu hình giao diện, menu, plugin MkDocs
├── requirements.txt            # Thư viện phụ thuộc (mkdocs-material)
├── .gitignore                  # Bỏ qua file tạm khi push Git
└── README.md                   # Hướng dẫn sử dụng
```

---

## 🚀 1. Hướng dẫn chạy thử ở Local (Máy cá nhân)

### Bước 1: Cài đặt thư viện phụ thuộc
Mở terminal trong thư mục `on-tap-python` và chạy:

```bash
pip install -r requirements.txt
```

### Bước 2: Khởi chạy Server xem trước (Live Reload)
Chạy lệnh sau:

```bash
mkdocs serve
```

Sau đó truy cập đường dẫn: `http://127.0.0.1:8000/` trên trình duyệt. Mọi thay đổi trong thư mục `docs/` sẽ tự động cập nhật ngay lập tức!

---

## 📤 2. Hướng dẫn Tải lên GitHub Repository & Bật GitHub Pages

### Bước 1: Khởi tạo Git và Commit
Tại thư mục `on-tap-python`, chạy các lệnh sau:

```bash
git init
git add .
git commit -m "Initial commit: Khoi tao trang on tap Python"
git branch -M main
```

### Bước 2: Thêm Remote Repository trên GitHub
1. Truy cập [GitHub](https://github.com/) và tạo mới 1 Repository tên là **`on-tap-python`** (Public).
2. Chạy lệnh liên kết và push (thay `<ten-username-github>` bằng tài khoản GitHub của bạn):

```bash
git remote add origin https://github.com/<ten-username-github>/on-tap-python.git
git push -u origin main
```

### Bước 3: Cấu hình GitHub Pages trên GitHub
1. Vào repository **`on-tap-python`** của bạn trên GitHub.
2. Khi lệnh `git push` hoàn tất, vào tab **Actions** trên GitHub để theo dõi quá trình tự động build của `deploy.yml` (mất khoảng 1-2 phút).
3. Sau khi Action chạy xong thành công, vào **Settings** > **Pages**:
   - Tại mục **Source**, chọn **Deploy from a branch**.
   - Tại mục **Branch**, chọn nhánh **`gh-pages`** và thư mục **`/(root)`**.
   - Bấm **Save**.
4. Truy cập trang web tại: `https://<ten-username-github>.github.io/on-tap-python/`

---

## ✍️ 3. Cách thêm bài học mới

1. Tạo file `.md` mới trong thư mục `docs/` (ví dụ `docs/02-cau-truc-du-lieu/02-dict-set.md`).
2. Mở file `mkdocs.yml`, thêm bài mới vào mục `nav:` theo đúng cấp bậc.
3. Commit và push lên nhánh `main`:
   ```bash
   git add .
   git commit -m "Add bai doc dict va set"
   git push origin main
   ```
   *GitHub Actions sẽ tự động cập nhật trang web trên GitHub Pages cho bạn!*
