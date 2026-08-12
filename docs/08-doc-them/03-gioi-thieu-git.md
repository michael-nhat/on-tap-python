# Giới thiệu về Quản lý Phiên bản và Git (Dành cho học sinh)

Chắc hẳn các bạn học sinh đã từng trải qua cảnh làm bài tập nhóm môn Văn hoặc môn Lịch sử. Nhóm trưởng tạo một file Word và bắt đầu gửi qua lại cho các thành viên.

Sau một tuần, thư mục máy tính của bạn sẽ trông như thế này:
- `Bai_tap_Nhom.docx`
- `Bai_tap_Nhom_Sua_lan_1.docx`
- `Bai_tap_Nhom_Ban_Chuan.docx`
- `Bai_tap_Nhom_Ban_Chuan_Nhat.docx`
- `Bai_tap_Nhom_Ban_Chuan_Nhat_Cua_Lan_Sua.docx`
- `Bai_tap_Nhom_Nop_Cho_Co.docx`

**Vấn đề đau đầu là:**
1. Trông rất rối mắt và tốn dung lượng máy tính.
2. Nếu bạn muốn biết Nam đã sửa câu văn nào từ `Ban_Chuan` lên `Ban_Chuan_Nhat`, bạn phải mở cả hai file lên, đọc lại từng dòng bằng mắt thường. Rất mệt mỏi!
3. Nếu Nam và Lan cùng sửa file `Bai_tap_Nhom.docx` cùng một lúc ở nhà, sau đó gửi lại cho bạn, bạn sẽ phải vất vả ngồi ghép bài của Nam và Lan lại với nhau thành một bài hoàn chỉnh.

Khi viết phần mềm (Code), lập trình viên cũng gặp y hệt những vấn đề này, nhưng với mức độ khó gấp hàng nghìn lần! Một phần mềm có thể có hàng chục nghìn dòng code và hàng trăm người cùng viết. 

Đó chính là nguyên nhân ra đời của **Hệ thống Quản lý Phiên bản (Version Control System - VCS)**, và công cụ nổi tiếng nhất thế giới tên là **Git**.

## 1. Git là gì và tại sao lại "thần thánh" đến vậy?

Git giống như một "Cỗ máy thời gian" và một "Người quản lý siêu đẳng" dành cho thư mục của bạn.

Thay vì phải copy ra hàng chục file đính kèm chữ "Bản cuối", "Bản chuẩn", Git sẽ lưu lại **lịch sử sửa đổi** ngầm bên trong một thư mục duy nhất. 
- Nó biết chính xác ai đã xóa dòng số 5, ai đã thêm dòng số 10 vào lúc mấy giờ.
- Nếu lỡ làm hỏng chương trình, bạn có thể bấm nút "quay ngược thời gian" về đúng phiên bản của ngày hôm qua chỉ trong 1 giây.
- Nếu nhiều người cùng làm bài, Git sẽ tự động "ghép" (merge) các đoạn code của mọi người lại với nhau cực kỳ thông minh.

## 2. Các khái niệm Git qua ví dụ bài tập nhóm

- **Repository (Kho chứa):** Giống như một cái cặp sách chứa toàn bộ file bài tập của bạn và cả cỗ máy thời gian của Git bên trong đó.
- **Commit (Lưu trạng thái):** Mỗi khi bạn viết xong một đoạn văn (hoặc đoạn code) hay, bạn sẽ thực hiện một "Commit". Nó giống như việc bạn chụp lại một bức ảnh của bài làm ngay lúc đó và ghi chú: *"Đã làm xong phần mở bài"*. Bức ảnh này sẽ được lưu mãi mãi.
- **Branch (Nhánh):** Tưởng tượng nhóm bạn đang viết bài tập. Nam muốn thử nghiệm viết một cái kết bài thật phá cách, nhưng sợ làm hỏng bài gốc. Nam có thể tạo ra một "Nhánh" riêng. Nhánh này là bản sao của bài gốc. Nam cứ tha hồ sửa chữa trên nhánh của mình.
- **Merge (Gộp nhánh):** Sau khi Nam viết xong kết bài phá cách và cả nhóm đều khen hay, nhóm trưởng sẽ làm thao tác "Merge". Toàn bộ nội dung hay ho của Nam lập tức được gộp vào bài gốc của cả nhóm một cách mượt mà.
- **GitHub:** Đây là một trang web (giống như Google Drive) để cả nhóm đẩy (Push) cái "cặp sách" Git của mình lên mạng. Nhờ có GitHub, bạn có thể ngồi ở nhà kéo (Pull) bài của bạn bè về máy tính của mình để làm tiếp.

## 3. Các lệnh cơ bản (Dành cho bạn nào tò mò)
Mọi người thường dùng Git bằng cách gõ lệnh (dù hiện tại đã có rất nhiều phần mềm có giao diện nút bấm). Các lệnh cơ bản như:
- `git clone`: Tải cặp sách (Repository) từ trên mạng (GitHub) về máy.
- `git add`: Chọn những bài tập bạn vừa sửa xong để chuẩn bị chụp ảnh.
- `git commit -m "Đã làm xong phần thân bài"`: Chính thức chụp ảnh (lưu lịch sử) cùng với lời nhắn.
- `git push`: Đẩy bài làm của bạn lên mạng cho các bạn khác xem.

Tóm lại, học Git giống như học cách làm việc nhóm chuyên nghiệp. Bất kỳ lập trình viên nào muốn đi làm cũng đều phải biết sử dụng Git!
