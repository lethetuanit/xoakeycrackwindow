# 💻 Windows License Cleanup Script

Một đoạn script Batch (`.bat`) nhỏ gọn giúp tự động hóa quá trình gỡ bỏ hoàn toàn Product Key, làm sạch Registry, xóa thông tin máy chủ KMS và reset trạng thái bản quyền của hệ điều hành Windows.

⚠️ **LƯU Ý QUAN TRỌNG:** 
- Script này sẽ **xóa bỏ bản quyền Windows hiện tại** của bạn. 
- Chỉ sử dụng khi bạn cần nhập key mới, khắc phục sự cố kẹt key cũ, hoặc muốn làm sạch hệ thống trước khi chuyển từ kích hoạt KMS sang key bản quyền chính hãng (Retail/OEM).
- Mọi rủi ro khi sử dụng script do người dùng tự chịu trách nhiệm.

---

## 🌟 Tính năng chính

- 🛡️ **Kiểm tra quyền Administrator:** Tự động dừng và cảnh báo nếu script không được chạy dưới quyền quản trị cao nhất.
- 🗑️ **Gỡ Product Key (`slmgr /upk`):** Loại bỏ hoàn toàn key bản quyền hiện tại đang áp dụng trên máy.
- 🧹 **Làm sạch Registry (`slmgr /cpky`):** Xóa thông tin key đã lưu trong Registry để bảo mật và tránh xung đột.
- 🌐 **Xóa máy chủ KMS (`slmgr /ckms`):** Xóa thông tin về máy chủ KMS lậu/cũ (nếu có).
- 🔄 **Reset trạng thái (`slmgr /rearm`):** Khôi phục trạng thái cấp phép của Windows về mặc định.
- ⚡ **Khởi động lại tự động:** Cung cấp tùy chọn khởi động lại máy ngay lập tức để áp dụng các thay đổi.

---

## 🚀 Hướng dẫn sử dụng

1. Tải file script về máy (ví dụ: `CleanWindowsKey.bat`) hoặc sao chép mã nguồn và lưu lại với đuôi `.bat`.
2. Nhấn chuột phải vào file `.bat` vừa tạo.
3. Chọn **Run as administrator** (Chạy dưới quyền quản trị). *Nếu bạn chỉ click đúp (mở bình thường), script sẽ báo lỗi và yêu cầu chạy lại.*
4. Chờ script tự động thực thi qua 4 bước.
5. Khi hoàn tất, script sẽ hỏi: `Ban co muon khoi dong lai may tinh ngay bay gio khong? (Y/N):`. 
   - Nhập `Y` (Yes) rồi ấn Enter để máy tính tự động đếm ngược 5 giây và khởi động lại.
   - Nhập `N` (No) rồi ấn Enter nếu bạn muốn lưu công việc và tự khởi động lại thủ công sau.

---

## 📖 Giải thích các dòng lệnh (Dành cho người muốn tìm hiểu)

Script sử dụng công cụ quản lý bản quyền mặc định của Windows là `slmgr.vbs` (Software License Manager):
- `cscript //nologo ... /upk`: Uninstall Product Key - Gỡ bỏ key hiện tại khỏi hệ điều hành.
- `cscript //nologo ... /cpky`: Clear Product Key from Registry - Xóa key khỏi registry để các phần mềm bên thứ 3 không thể đọc được.
- `cscript //nologo ... /ckms`: Clear KMS Server - Xóa cấu hình tên máy chủ KMS (nếu trước đó dùng crack/KMS).
- `cscript //nologo ... /rearm`: Reset lại tình trạng bản quyền và thời gian dùng thử của máy tính.

---

## 📜 Giấy phép (License)

Dự án này là mã nguồn mở (Open-source) và được cung cấp miễn phí dưới giấy phép MIT. Bạn có thể tự do sử dụng, sửa đổi và phân phối lại theo nhu cầu cá nhân.
