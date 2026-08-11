# 📝 Mô Tả Chương Trình: Ngôn Ngữ Tự Nhiên, Mã Giả và Code Thực Tế

Khi giải quyết một bài toán lập trình, chúng ta hiếm khi nhảy ngay vào việc gõ code. Thay vào đó, tư duy giải thuật thường trải qua 3 cấp độ mô tả:

1. **Ngôn ngữ tự nhiên (Natural Language):** Diễn đạt cách giải bằng ngôn ngữ nói/viết thông thường. Cấp độ này cực kì dễ hiểu cho người trần mắt thịt nhưng thường thiếu tính logic toán học, dễ gây hiểu lầm.
2. **Mã giả (Pseudocode):** Viết lai giữa ngôn ngữ tự nhiên và cấu trúc logic lập trình. Nó tập trung trình bày thuật toán một cách chặt chẽ nhưng không phụ thuộc vào cú pháp của bất kỳ ngôn ngữ nào (C++, Python, Java...).
3. **Code thực tế (Actual Code):** Chuyển dịch từ mã giả sang mã nguồn hoàn chỉnh của một ngôn ngữ cụ thể (ở đây là Python) để máy tính có thể hiểu và thực thi.

Dưới đây là ví dụ minh họa 3 mức độ mô tả này qua 3 cấu trúc cốt lõi của lập trình: **Rẽ nhánh**, **Vòng lặp** và **Đệ quy**.

---

## 1. Cấu Trúc Rẽ Nhánh (Branching)

**Bài toán:** Kiểm tra xem một số nguyên $N$ có phải là số chẵn hay không.

### 🗣️ Ngôn Ngữ Tự Nhiên
"Nếu số $N$ chia hết cho 2 (tức là phần dư khi chia cho 2 bằng 0) thì thông báo nó là số chẵn. Trái lại, nếu không chia hết thì thông báo nó là số lẻ."

### 📝 Mã Giả (Pseudocode)
```text
NHẬP N
NẾU (N mod 2 == 0) THÌ:
    IN "Số chẵn"
NGƯỢC LẠI:
    IN "Số lẻ"
KẾT THÚC NẾU
```

### 💻 Code Python Thực Tế
```python
N = int(input("Nhập số N: "))

if N % 2 == 0:
    print("Số chẵn")
else:
    print("Số lẻ")
```

---

## 2. Cấu Trúc Vòng Lặp (Looping)

**Bài toán:** In ra màn hình tất cả các số từ 1 đến 5.

### 🗣️ Ngôn Ngữ Tự Nhiên
"Bắt đầu đếm từ 1. Trong khi con số hiện tại chưa vượt quá 5, hãy in con số đó ra, sau đó tăng số đếm lên 1 đơn vị. Cứ lặp lại thao tác này cho đến khi điều kiện không còn đúng nữa."

### 📝 Mã Giả (Pseudocode)
```text
ĐẶT bien_dem = 1
LẶP TRONG KHI (bien_dem <= 5):
    IN bien_dem
    TĂNG bien_dem LÊN 1
KẾT THÚC LẶP
```

### 💻 Code Python Thực Tế
```python
# Cách 1: Dùng vòng lặp while (logic giống sát với mã giả nhất)
bien_dem = 1
while bien_dem <= 5:
    print(bien_dem)
    bien_dem += 1

# Cách 2: Dùng vòng lặp for (Cách chuẩn mực - Pythonic)
for i in range(1, 6):
    print(i)
```

---

## 3. Cấu Trúc Đệ Quy (Recursion)

**Bài toán:** Tính giai thừa của một số nguyên dương $N$ (kí hiệu $N!$).  
*Gợi ý toán học:* $N! = N \times (N-1)!$ và quy ước $1! = 1$.

### 🗣️ Ngôn Ngữ Tự Nhiên
"Để tính giai thừa của $N$:
- Nếu $N$ là 1, ta đã biết chắc kết quả là 1. Đây là điểm dừng.
- Nếu $N$ lớn hơn 1, kết quả sẽ bằng chính số $N$ nhân với 'giai thừa của số nhỏ hơn nó một đơn vị'. Ta cứ đùn đẩy việc tính toán lùi dần như vậy cho đến khi đụng phải điểm dừng là 1 thì thôi."

### 📝 Mã Giả (Pseudocode)
```text
HÀM Tinh_Giai_Thua(N):
    NẾU (N == 1) THÌ:
        TRẢ VỀ 1  (Điểm dừng)
    NGƯỢC LẠI:
        TRẢ VỀ N * Tinh_Giai_Thua(N - 1)  (Gọi đệ quy)
KẾT THÚC HÀM
```

### 💻 Code Python Thực Tế
```python
def tinh_giai_thua(n):
    # Điểm dừng cơ sở (Base case)
    if n == 1:
        return 1
    # Bước đệ quy (Recursive step)
    else:
        return n * tinh_giai_thua(n - 1)

# Chạy thử chương trình
print("Giai thừa của 5 là:", tinh_giai_thua(5))
```

!!! tip "Tại sao cần luyện tập điều này?"
    Kỹ năng chuyển đổi từ **Ngôn Ngữ Tự Nhiên -> Mã Giả -> Code** chính là rèn luyện *Tư duy Máy tính (Computational Thinking)*. Bạn đừng bao giờ vội vàng lao vào gõ code khi trong đầu chưa thể diễn đạt trôi chảy cách giải bài toán bằng tiếng mẹ đẻ!
