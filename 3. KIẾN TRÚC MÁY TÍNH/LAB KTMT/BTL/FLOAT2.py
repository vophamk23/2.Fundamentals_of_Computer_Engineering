# Floatbin.py
# Chuong trinh ghi 2 so thuc 32-bit vao file nhi phan
# Chuong trinh nay su dung module struct de chuyen doi so thuc thanh dang nhi phan
import struct

# Ghi file voi 2 so thuc 32-bit
floats = [-4563.56432, 56383.443]
with open("FLOAT2.BIN", "wb") as f:
    f.write(struct.pack('ff', *floats))

print("Đã ghi thành công 2 số thực vào file data123.bin")