@echo off
:: Kiem tra quyen Administrator
net session >nul 2>&1
if %errorLevel% == 0 (
    echo [OK] Dang chay voi quyen Administrator.
) else (
    echo [ERROR] Vui long nhap chuot phai vao file va chon "Run as administrator"!
    pause
    exit /b
)

echo ===================================================
echo   QUY TRINH LAM SACH HE THONG & GO KEY BAN QUYEN
echo ===================================================
echo.

echo [1/4] Dang go key ban quyen cu (slmgr /upk)...
cscript //nologo %systemroot%\system32\slmgr.vbs /upk
echo.

echo [2/4] Dang xoa key khoi Registry (slmgr /cpky)...
cscript //nologo %systemroot%\system32\slmgr.vbs /cpky
echo.

echo [3/4] Dang xoa may chu KMS lau neu co (slmgr /ckms)...
cscript //nologo %systemroot%\system32\slmgr.vbs /ckms
echo.

echo [4/4] Dang reset trang thai cap phep (slmgr /rearm)...
cscript //nologo %systemroot%\system32\slmgr.vbs /rearm
echo.

echo ===================================================
echo   HOAN THANH QUY TRINH LAM SACH BAN QUYEN!
echo ===================================================
echo May tinh cua ban can duoc khoi dong lai de ap dung thay doi.
echo.
set /p choice="Ban co muon khoi dong lai may tinh ngay bay gio khong? (Y/N): "
if /i "%choice%"=="Y" (
    echo Dang khoi dong lai may tinh...
    shutdown /r /t 5
) else (
    echo Da huy khoi dong lai. Vui long tu khoi dong lai may thu cong truoc khi nhap key moi!
    pause
)
