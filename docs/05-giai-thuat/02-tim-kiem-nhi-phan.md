# Thuật toán Tìm kiếm nhị phân (Binary Search)

**Tìm kiếm nhị phân (Binary Search)** là một thuật toán tìm kiếm cực kỳ nhanh và hiệu quả, nhưng nó có một điều kiện tiên quyết: **Mảng dữ liệu đầu vào phải ĐÃ ĐƯỢC SẮP XẾP**.

Thay vì tìm kiếm từng phần tử một từ đầu đến cuối (Tìm kiếm tuần tự - Linear Search), Tìm kiếm nhị phân chia đôi khoảng tìm kiếm sau mỗi bước, loại bỏ một nửa số lượng phần tử cần kiểm tra.

## 1. Ý tưởng thuật toán
Giả sử ta cần tìm giá trị `X` trong một mảng đã sắp xếp tăng dần:
1. Xác định vị trí `Left` (đầu mảng) và `Right` (cuối mảng).
2. Tìm vị trí ở giữa: `Mid = (Left + Right) // 2`.
3. So sánh phần tử ở giữa `arr[Mid]` với `X`:
   - Nếu `arr[Mid] == X`: Đã tìm thấy, trả về vị trí `Mid`.
   - Nếu `arr[Mid] < X`: Vì mảng tăng dần, `X` chắc chắn nằm ở nửa bên phải. Cập nhật `Left = Mid + 1`.
   - Nếu `arr[Mid] > X`: `X` chắc chắn nằm ở nửa bên trái. Cập nhật `Right = Mid - 1`.
4. Lặp lại bước 2 cho đến khi `Left > Right` (không tìm thấy `X`).

## 2. Mã nguồn Python (Dùng vòng lặp)
```python
def binary_search(arr, target):
    left = 0
    right = len(arr) - 1
    
    while left <= right:
        mid = (left + right) // 2
        
        # Nếu tìm thấy mục tiêu
        if arr[mid] == target:
            return mid
            
        # Nếu mục tiêu lớn hơn phần tử ở giữa, bỏ qua nửa trái
        elif arr[mid] < target:
            left = mid + 1
            
        # Nếu mục tiêu nhỏ hơn phần tử ở giữa, bỏ qua nửa phải
        else:
            right = mid - 1
            
    # Không tìm thấy
    return -1

# Thử nghiệm
mang = [2, 3, 4, 10, 40, 50, 80, 100] # Mảng ĐÃ sắp xếp
x = 10
ket_qua = binary_search(mang, x)

if ket_qua != -1:
    print(f"Tìm thấy giá trị {x} tại chỉ số {ket_qua}.")
else:
    print(f"Không tìm thấy {x} trong mảng.")
```

## 3. Độ phức tạp (Complexity)
- **Thời gian (Time Complexity):** $O(\log N)$. Vì mỗi bước dữ liệu bị chia đôi, nên kể cả với mảng có 1 triệu phần tử, Binary Search chỉ mất tối đa khoảng 20 bước để tìm ra kết quả (vì $2^{20} > 1,000,000$). Nhanh hơn rất rất nhiều so với $O(N)$.
- **Không gian (Space Complexity):** $O(1)$ đối với cách viết dùng vòng lặp `while` (như trên).
