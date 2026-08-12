# Giới thiệu về Make và CMake

Khi viết các chương trình bằng ngôn ngữ C hoặc C++, quá trình chuyển từ mã nguồn (chữ) sang chương trình chạy được (file thực thi) đòi hỏi phải qua một trình biên dịch (Compiler). Nếu dự án có hàng chục, hàng trăm file, việc gõ lệnh biên dịch thủ công cho từng file là một "ác mộng". Đây là lúc các công cụ **Build System** ra đời.

## 1. Make và Makefile
**Make** là một công cụ xuất hiện từ rất lâu đời trên các hệ thống Unix/Linux. 
Nhiệm vụ của nó là tự động hóa quá trình xây dựng phần mềm (build) bằng cách đọc các quy tắc từ một file có tên là `Makefile`.

- Trong `Makefile`, bạn định nghĩa các **Target** (Mục tiêu), **Dependencies** (Các file cần thiết để tạo mục tiêu), và **Commands** (Lệnh để tạo).
- Điểm hay nhất của Make là nó "thông minh": nếu bạn chỉ sửa 1 file trong dự án 100 file, Make sẽ chỉ biên dịch lại duy nhất file đó chứ không biên dịch lại tất cả, giúp tiết kiệm rất nhiều thời gian.
- **Cách dùng:** Mở terminal tại thư mục chứa file `Makefile` và gõ lệnh `make`.

## 2. CMake là gì?
Tuy Make rất mạnh, nhưng viết `Makefile` thủ công cho các dự án lớn, đa nền tảng (chạy trên cả Windows, Mac, Linux) lại rất khó khăn do mỗi hệ điều hành có trình biên dịch và đường dẫn khác nhau.

**CMake** ra đời để giải quyết vấn đề này. 
- CMake KHÔNG trực tiếp biên dịch code.
- Thay vào đó, CMake là một công cụ **tạo ra Build System** (Meta-build system). Bạn viết một file cấu hình duy nhất tên là `CMakeLists.txt`. Từ file này, CMake sẽ tự động sinh ra `Makefile` (nếu chạy trên Linux) hoặc sinh ra project Visual Studio (nếu chạy trên Windows).

## 3. Luồng sử dụng cơ bản của CMake
Quy trình chuẩn khi biên dịch một dự án C++ dùng CMake thường bao gồm các bước sau (out-of-source build):

1. **Tạo thư mục build riêng:** Để tránh sinh ra các file rác lẫn lộn vào thư mục code.
   ```bash
   mkdir build
   cd build
   ```
2. **Cấu hình (Configure):** Dùng CMake để đọc `CMakeLists.txt` từ thư mục cha và sinh ra `Makefile`.
   ```bash
   cmake ..
   ```
3. **Biên dịch (Build):** Chạy công cụ build (như Make) dựa trên file vừa được sinh ra.
   ```bash
   make
   ```
(Hoặc ở các phiên bản CMake mới hơn, chỉ cần gõ `cmake --build .` là CMake sẽ tự động gọi trình biên dịch chuẩn xác).

Tóm lại: Bạn viết `CMakeLists.txt`, dùng `cmake` sinh ra `Makefile`, và dùng `make` để tạo ra phần mềm hoàn chỉnh.
