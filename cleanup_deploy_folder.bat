@echo off
REM Script dọn dẹp và chuẩn hóa thư mục deploy-public cho static deploy Vercel
cd /d %~dp0deploy-public

REM Xóa các file/thư mục không cần thiết
if exist QLTB.html del QLTB.html
if exist .vercel rmdir /s /q .vercel
if exist .gitignore del .gitignore

REM Đảm bảo chỉ còn các file: index.html, manifest.json, icon-192.png, icon-512.png, service-worker.js, vercel.json

REM Thông báo hoàn tất
echo "Đã dọn dẹp xong. Chỉ giữ lại các file tĩnh cần thiết cho static deploy."
pause
