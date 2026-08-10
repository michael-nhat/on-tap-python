# Phạm vi dùng biến (Scope) trong Python

Trong Python, **Phạm vi (Scope)** quyết định nơi mà một biến có thể được truy cập hay sửa đổi. Khi lập trình thuật toán hoặc giải các bài toán thi đấu, việc hiểu sai về phạm vi biến thường dẫn đến những lỗi logic khó phát hiện hoặc lỗi kinh điển `UnboundLocalError`.

## 1. Biến cục bộ (Local Variable)
Biến cục bộ là biến được khai báo **bên trong một hàm**. Nó chỉ tồn tại và có thể được sử dụng ở bên trong phạm vi của hàm đó. Khi hàm thực thi xong, biến này lập tức bị thu hồi khỏi bộ nhớ.

```python
def tinh_tong(a, b):
    ket_qua = a + b  # 'ket_qua' là biến cục bộ
    return ket_qua

print(tinh_tong(3, 4))
# Lệnh dưới đây sẽ báo lỗi vì 'ket_qua' không tồn tại bên ngoài hàm!
# print(ket_qua)  
```

## 2. Biến toàn cục (Global Variable)
Biến toàn cục là biến được khai báo **bên ngoài tất cả các hàm**. Nó có thể được "nhìn thấy" và "đọc" bởi bất kỳ hàm nào trong file code.

**Quy tắc tối quan trọng:** Bên trong một hàm, bạn có quyền **ĐỌC** giá trị của biến toàn cục. Nhưng nếu bạn muốn **SỬA** giá trị (gán giá trị mới) cho biến toàn cục, bạn bắt buộc phải dùng từ khóa `global`.

```python
count = 0  # Biến toàn cục

def doc_bien():
    # Hợp lệ: Chỉ in ra (ĐỌC)
    print(count)  

def sua_bien_loi():
    # LỖI UnboundLocalError!
    # Python tưởng bạn đang cố gắng tạo biến cục bộ 'count' nhưng lại chưa gán giá trị
    count = count + 1  

def sua_bien_chuan():
    global count       # Khai báo: "Hãy dùng biến toàn cục 'count' nhé"
    count = count + 1  # Hợp lệ
```

---

## 3. Lời khuyên thiết kế thuật toán & bài giải

Lạm dụng biến toàn cục (`global`) là một "anti-pattern" (thói quen xấu). Nó khiến code khó đọc, cực kỳ khó gỡ lỗi (debug) và làm giảm hiệu năng (do Python truy xuất biến cục bộ nhanh hơn biến toàn cục). 

Khi làm bài thi, hãy áp dụng các nguyên tắc sau:

### 💡 Tránh `global` bằng tham số và `return`
Thay vì để các hàm sửa chung một biến toàn cục (ví dụ biến `ans` để lưu đáp án), hãy thiết kế hàm tự tính toán và trả kết quả về qua lệnh `return`, hoặc truyền tham số vào hàm.

### 💡 Tận dụng sự "Khả biến" (Mutable) của List
Nhớ lại bài học về Dữ liệu Khả biến: Nếu biến toàn cục của bạn là một `list`, `dict` hay `set`, bạn **KHÔNG CẦN** dùng từ khóa `global` để thêm/sửa/xóa phần tử bên trong nó!

```python
visited = [False] * 100  # Mảng đánh dấu toàn cục

def dfs(node):
    # Không cần khai báo 'global visited'
    visited[node] = True  # Thay đổi nội dung của list hoàn toàn hợp lệ!
    print(f"Đã thăm {node}")
```
👉 *Đây là "tuyệt chiêu" bắt buộc phải biết khi cài đặt các thuật toán Đồ thị (DFS, BFS), Quay lui (Backtracking). Nó giúp code đệ quy ngắn gọn, đẹp mắt mà không vướng phải rắc rối của `global`.*

### 💡 Gói mọi thứ vào một hàm `main()`
Hãy bỏ thói quen viết code logic rải rác ở không gian ngoài cùng của file. Hãy gói trọn việc Đọc input, Gọi thuật toán và In output vào trong một hàm `main()`.

```python
def solve(n, arr):
    # Logic thuật toán chính
    return sum(arr)

def main():
    # Nhập xuất dữ liệu đều nằm trong hàm main (Biến cục bộ)
    n = int(input())
    arr = list(map(int, input().split()))
    
    print(solve(n, arr))

# Điểm bắt đầu của chương trình
if __name__ == "__main__":
    main()
```
Cách viết này không chỉ giúp code có cấu trúc chuyên nghiệp, mà còn **giúp chương trình chạy nhanh hơn đáng kể**, vì toàn bộ các biến `n`, `arr` giờ đây là biến cục bộ của hàm `main()`, được Python cấp phát và truy xuất cực kỳ tối ưu.
