# Thuật toán Sắp xếp nổi bọt (Bubble Sort)

**Sắp xếp nổi bọt (Bubble Sort)** là một trong những thuật toán sắp xếp cơ bản và dễ hiểu nhất. Ý tưởng chính của thuật toán là lặp đi lặp lại việc duyệt qua mảng, so sánh các cặp phần tử liền kề và đổi chỗ chúng nếu chúng đang ở sai thứ tự. 

Quá trình này lặp lại cho đến khi không cần đổi chỗ nữa, tức là mảng đã được sắp xếp. Nó được gọi là "nổi bọt" vì các phần tử lớn nhất (hoặc nhỏ nhất) sẽ dần dần "nổi" lên cuối mảng sau mỗi lần lặp.

## 1. Ý tưởng thuật toán (Sắp xếp tăng dần)
1. Bắt đầu từ đầu mảng, so sánh phần tử thứ 1 với phần tử thứ 2.
2. Nếu phần tử thứ 1 lớn hơn phần tử thứ 2, đổi chỗ chúng.
3. Chuyển sang so sánh phần tử thứ 2 với phần tử thứ 3, đổi chỗ nếu cần thiết.
4. Lặp lại cho đến cuối mảng. Lúc này phần tử lớn nhất đã nằm ở vị trí cuối cùng.
5. Lặp lại toàn bộ quá trình trên cho các phần tử còn lại (bỏ qua các phần tử cuối cùng đã được sắp xếp).

## 2. Mã nguồn Python
```python
def bubble_sort(arr):
    n = len(arr)
    # Lặp qua tất cả các phần tử
    for i in range(n):
        # Biến cờ để tối ưu: nếu mảng đã sắp xếp thì dừng luôn
        swapped = False
        
        # Vòng lặp thứ 2 để đẩy phần tử lớn nhất xuống cuối
        # n-i-1 vì i phần tử cuối cùng đã ở đúng vị trí
        for j in range(0, n - i - 1):
            if arr[j] > arr[j + 1]:
                # Đổi chỗ 2 phần tử
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
                swapped = True
                
        # Nếu không có phần tử nào bị đổi chỗ trong toàn bộ vòng lặp trong
        # thì mảng đã được sắp xếp xong
        if not swapped:
            break
            
    return arr

# Thử nghiệm
mang = [64, 34, 25, 12, 22, 11, 90]
print("Mảng ban đầu:", mang)
print("Mảng sau khi sắp xếp:", bubble_sort(mang))
```

## 3. Độ phức tạp (Complexity)
- **Thời gian (Time Complexity):** $O(N^2)$ trong trường hợp xấu nhất và trung bình. Tuy nhiên, nếu mảng đã được sắp xếp sẵn và ta dùng cờ `swapped` như trên, thuật toán chỉ mất $O(N)$. Do đó Bubble Sort rất chậm với mảng lớn, hiếm khi được dùng trong thực tế ngoại trừ mục đích giáo dục.
- **Không gian (Space Complexity):** $O(1)$ vì chỉ đổi chỗ tại chỗ (in-place) mà không tốn thêm bộ nhớ.
