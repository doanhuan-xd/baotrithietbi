# Hướng dẫn deploy app lên GitHub Pages

## 1. Tạo repository mới trên GitHub
- Truy cập https://github.com/new
- Đặt tên repo (ví dụ: qltb-app), chọn Public.
- Không cần README, không cần .gitignore.

## 2. Chuẩn bị thư mục deploy-public
- Đảm bảo chỉ có các file: index.html, manifest.json, icon-192.png, icon-512.png, service-worker.js

## 3. Đẩy code lên GitHub
Mở terminal tại thư mục `deploy-public` và chạy các lệnh sau (thay USERNAME và REPO bằng của bạn):

```
git init
git remote add origin https://github.com/USERNAME/REPO.git
git checkout -b gh-pages
git add .
git commit -m "Deploy static app"
git push -u origin gh-pages --force
```

## 4. Bật GitHub Pages
- Vào repo trên GitHub → Settings → Pages.
- Source: chọn branch `gh-pages`, folder `/ (root)`.
- Lưu lại, đợi vài phút sẽ có link dạng:
  `https://USERNAME.github.io/REPO/`

## 5. Kiểm tra app
- Gửi lại link cho tôi để kiểm tra tự động toàn bộ app!

---
Nếu cần script tự động hóa, hãy báo cho tôi.
