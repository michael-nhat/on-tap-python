# Đệ quy và Vòng lặp

Trong lập trình thuật toán, có rất nhiều bài toán có thể được giải quyết bằng cả hai phương pháp: **Vòng lặp (Iteration)** và **Đệ quy (Recursion)**. Việc hiểu rõ ưu và nhược điểm của từng phương pháp sẽ giúp bạn đưa ra lựa chọn sáng suốt nhất khi đối mặt với một bài toán khó.

---

## 1. Điểm giống và khác nhau

- **Vòng lặp (Iteration):** Sử dụng các câu lệnh cấu trúc như `for` hoặc `while` để lặp đi lặp lại một khối lệnh cho đến khi điều kiện dừng được thỏa mãn.
- **Đệ quy (Recursion):** Là kỹ thuật mà một hàm **tự gọi lại chính nó**. Mỗi lần gọi lại, quy mô của bài toán được thu nhỏ đi một chút cho đến khi chạm đến **Điểm dừng (Base case)** thì bắt đầu trả kết quả ngược về.

### Ví dụ kinh điển: Tính Giai thừa $N!$

**Dùng Vòng lặp:**
```python
def factorial_iterative(n):
    result = 1
    for i in range(1, n + 1):
        result *= i
    return result
```

**Dùng Đệ quy:**
```python
def factorial_recursive(n):
    # Điểm dừng (Base case)
    if n == 0 or n == 1:
        return 1
    # Hàm tự gọi lại chính nó với bài toán nhỏ hơn (n-1)
    return n * factorial_recursive(n - 1)
```
Cả hai cách trên đều cho ra cùng một kết quả, nhưng bản chất bộ nhớ và tốc độ đằng sau là hoàn toàn khác nhau.

---

## 2. Khi nào dùng Vòng lặp? Khi nào dùng Đệ quy?

### Vòng lặp (Iteration)
- **Ưu điểm:** Tốc độ thực thi cực kỳ nhanh. Bộ nhớ tiêu tốn ít vì không phải duy trì các ngăn xếp (Stack) cho hàng ngàn lần gọi hàm. Không bao giờ bị lỗi tràn bộ nhớ (Stack Overflow).
- **Nhược điểm:** Với một số bài toán có cấu trúc phức tạp (như duyệt cây), viết vòng lặp đòi hỏi bạn phải tự tạo mảng Stack mô phỏng, khiến code dài dòng và khó hiểu.
- **Nên dùng khi:** Bài toán xử lý mảng cơ bản, duyệt mảng 1D/2D, Quy hoạch động dạng bảng (Tabulation).

### Đệ quy (Recursion)
- **Ưu điểm:** Code vô cùng ngắn gọn, thanh lịch và sát với tư duy logic Toán học.
- **Nhược điểm:** Tốn kém bộ nhớ. Python giới hạn mặc định độ sâu đệ quy ở mức 1000 lần gọi. Nếu gọi đệ quy quá sâu sẽ bị văng lỗi `RecursionError`.
- **Nên dùng khi:** Bản chất bài toán là Chia để trị (Divide and Conquer). Giải quyết các bài toán trên cấu trúc Cây (Tree), Đồ thị (Duyệt DFS), Quay lui (Backtracking sinh hoán vị, tổ hợp).

---

## 3. Lời khuyên khi luyện tập thuật toán

1. **Hiểu Đệ quy là kỹ năng BẮT BUỘC:** Khi tiến tới các bài toán nâng cao (Cấp tỉnh/quốc gia, Leetcode Medium/Hard), Đệ quy là tư duy cốt lõi không thể trốn tránh. Đừng vì vòng lặp dễ hiểu hơn mà bỏ qua đệ quy. Hãy cố gắng luyện tập để nhìn nhận bài toán dưới góc độ chia nhỏ đệ quy.

2. **Khắc cốt ghi tâm "Điểm dừng" (Base Case):** Sai lầm chí mạng nhất khi viết đệ quy là quên viết điểm dừng, hoặc viết sai logic khiến nó không bao giờ kích hoạt. Hậu quả là hàm cứ tự gọi mãi đến khi cháy máy (tràn bộ nhớ). Hãy luôn viết lệnh `if` kiểm tra điểm dừng ở ngay đầu hàm đệ quy.

3. **Mẹo tăng giới hạn đệ quy:** Nếu bài toán yêu cầu phải đệ quy mảng 100,000 phần tử, Python mặc định sẽ báo lỗi. Trong phòng thi, bạn có thể dùng mẹo sau ở đầu file code để "hack" giới hạn:
   ```python
   import sys
   sys.setrecursionlimit(10**6)  # Tăng giới hạn lên 1 triệu lần
   ```

4. **Kẻ thù của Đệ quy - Trùng lặp tính toán:** Nếu hàm đệ quy của bạn phải tính đi tính lại một bài toán con quá nhiều lần, thời gian chạy sẽ bùng nổ (Time Limit Exceeded - TLE). Khi đó, hãy kết hợp thêm một mảng hoặc Dictionary để lưu lại kết quả đã tính. Kỹ thuật này được gọi là **Đệ quy có nhớ (Memoization)**.

---

## 4. Ví dụ 2: Dãy Fibonacci (Lật tẩy sức mạnh)

Tính số Fibonacci thứ `n` ($F_n = F_{n-1} + F_{n-2}$).

**Đệ quy ngây thơ (Cực kỳ chậm với N = 50 do tính trùng lặp hàng tỷ lần):**
```python
def fib_slow(n):
    if n <= 1: return n
    return fib_slow(n-1) + fib_slow(n-2)
```

**Vòng lặp (Cực nhanh và nhẹ nhàng):**
```python
def fib_iter(n):
    if n <= 1: return n
    a, b = 0, 1
    for _ in range(2, n + 1):
        a, b = b, a + b
    return b
```

**Đệ quy có nhớ - Memoization (Viết cực nhanh, chạy cũng rất nhanh):**
```python
import sys
sys.setrecursionlimit(10**5)
memo = {}  # Nơi lưu trữ kết quả để không phải tính lại

def fib_memo(n):
    # Nhìn thấy kết quả đã lưu trong kho thì lấy ra xài luôn
    if n in memo: return memo[n]
    if n <= 1: return n
    
    # Tính toán, lưu vào kho, rồi mới trả về
    memo[n] = fib_memo(n-1) + fib_memo(n-2)
    return memo[n]
```
👉 *Đệ quy có nhớ là "vũ khí siêu hạng" khi bạn đứng trước một bài toán Quy hoạch động quá phức tạp để có thể suy nghĩ ra cách lập bảng bằng vòng lặp. Cứ viết đệ quy rồi thêm mảng nhớ là xong!*
