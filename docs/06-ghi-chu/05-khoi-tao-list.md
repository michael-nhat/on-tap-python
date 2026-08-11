# Các cách khởi tạo List nhanh trong Python

Khi lập trình Python, đặc biệt trong các kỳ thi học sinh giỏi hay lập trình thi đấu (Competitive Programming), việc khởi tạo mảng (List) nhanh chóng là rất quan trọng. Dưới đây là những cách thường dùng nhất để tạo một List mà không cần dùng vòng lặp `for` theo cách truyền thống.

## 1. Dùng toán tử nhân `*` (Khởi tạo mảng có sẵn giá trị)

Cách nhanh nhất để tạo một mảng gồm $N$ phần tử giống hệt nhau (thường là mảng toàn số 0 hoặc mảng boolean `False` / `True`).

```python
# Tạo mảng gồm 10 số 0
arr = [0] * 10
# arr = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

# Tạo mảng đánh dấu (visited) gồm 100 giá trị False
visited = [False] * 100
```
> **⚠️ Cảnh báo:** Chỉ dùng cách này cho mảng 1 chiều chứa kiểu dữ liệu nguyên thủy (số, chuỗi, boolean). Nếu dùng `[[0] * M] * N` để tạo mảng 2 chiều, các hàng sẽ bị tham chiếu (reference) lẫn nhau dẫn đến lỗi nghiêm trọng khi gán giá trị!

## 2. Ép kiểu từ `range()`

Hàm `range()` sinh ra một chuỗi số nguyên. Ta có thể ép kiểu nó thành List để có mảng các số liên tiếp.

```python
# Mảng các số từ 0 đến 9
arr1 = list(range(10))
# [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# Mảng các số từ 1 đến 10
arr2 = list(range(1, 11))
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Mảng các số chẵn từ 2 đến 10 (bước nhảy là 2)
arr3 = list(range(2, 11, 2))
# [2, 4, 6, 8, 10]
```

## 3. Khởi tạo từ chuỗi bằng `split()`

Khi nhập dữ liệu đầu vào (input) từ bàn phím gồm nhiều số/chữ trên cùng 1 dòng cách nhau bởi dấu cách, ta dùng `split()` để tách chúng thành một List.

```python
s = "Python is awesome"
arr = s.split() 
# ['Python', 'is', 'awesome']

# Tách chuỗi bởi dấu phẩy
s2 = "apple,banana,cherry"
arr2 = s2.split(",")
# ['apple', 'banana', 'cherry']
```

## 4. Dùng List Comprehension (Mạnh mẽ nhất)

List Comprehension là cú pháp đặc trưng của Python để khởi tạo mảng vừa nhanh vừa ngắn gọn, cho phép nhúng vòng lặp và điều kiện `if` vào ngay trong dấu ngoặc vuông `[]`.

```python
# 1. Tạo mảng bình phương các số từ 1 đến 5
squares = [x**2 for x in range(1, 6)]
# [1, 4, 9, 16, 25]

# 2. Vừa nhập vừa ép kiểu các số trên 1 dòng thành số nguyên (rất hay dùng)
# Giả sử input là: 5 10 15 20
# nums = [int(x) for x in input().split()]

# 3. Kết hợp điều kiện (Chỉ lấy số chẵn)
evens = [x for x in range(10) if x % 2 == 0]
# [0, 2, 4, 6, 8]

# 4. Khởi tạo mảng 2 chiều an toàn (Ma trận 3 hàng, 4 cột toàn số 0)
matrix = [[0] * 4 for _ in range(3)]
# [[0, 0, 0, 0], 
#  [0, 0, 0, 0], 
#  [0, 0, 0, 0]]
```

## Tổng kết
Nắm vững List Comprehension và các phương thức ép kiểu nhanh giúp code Python của bạn vừa Pythonic (đúng phong cách Python), vừa gia tăng tốc độ xử lý khi phải thao tác với cấu trúc dữ liệu lớn.
