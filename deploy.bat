@echo off
chcp 65001 >nul
title نشر برنامج الجبرني المحاسبي على GitHub Pages

echo.
echo ========================================
echo 🚀 بدء عملية النشر على GitHub Pages
echo ========================================
echo.

REM Check if repository name is provided
if "%1"=="" (
    echo ❌ يرجى تمرير اسم المستودع كمعامل
    echo.
    echo Usage: deploy.bat ^<repository-name^>
    echo Example: deploy.bat car-wash-accounting-system
    echo.
    pause
    exit /b 1
)

set REPO_NAME=%1
for /f "tokens=*" %%i in ('git config user.name') do set GITHUB_USERNAME=%%i

if "%GITHUB_USERNAME%"=="" (
    echo ❌ لم يتم العثور على اسم المستخدم في Git
    echo يرجى تعيين اسم المستخدم أولاً:
    echo git config --global user.name "Your Name"
    echo.
    pause
    exit /b 1
)

echo 📋 معلومات النشر:
echo   - اسم المستخدم: %GITHUB_USERNAME%
echo   - اسم المستودع: %REPO_NAME%
echo   - رابط المستودع: https://github.com/%GITHUB_USERNAME%/%REPO_NAME%
echo.

REM Check if remote origin exists and update it
git remote get-url origin >nul 2>&1
if %errorlevel% equ 0 (
    echo 🔄 تحديث remote origin...
    git remote set-url origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git
) else (
    echo ➕ إضافة remote origin...
    git remote add origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git
)

REM Push to GitHub
echo.
echo 📤 رفع الكود إلى GitHub...
git push -u origin master

if %errorlevel% equ 0 (
    echo.
    echo ✅ تم رفع الكود بنجاح!
    echo.
    echo 🌐 لتفعيل GitHub Pages:
    echo 1. اذهب إلى: https://github.com/%GITHUB_USERNAME%/%REPO_NAME%
    echo 2. اضغط على Settings
    echo 3. في القائمة الجانبية، اضغط على Pages
    echo 4. في Source، اختر 'Deploy from a branch'
    echo 5. اختر Branch: master و Folder: /(root)
    echo 6. اضغط Save
    echo.
    echo 📱 رابط التطبيق بعد التفعيل:
    echo https://%GITHUB_USERNAME%.github.io/%REPO_NAME%
    echo.
    echo ⏱️ قد يستغرق الأمر بضع دقائق حتى يصبح الموقع متاحاً
    echo.
    echo 🎉 تم إعداد المشروع للنشر بنجاح!
) else (
    echo.
    echo ❌ فشل في رفع الكود. تأكد من:
    echo   1. إنشاء المستودع على GitHub
    echo   2. إعداد SSH key أو Personal Access Token
    echo   3. التحقق من صحة اسم المستخدم وكلمة المرور
    echo.
)

echo.
echo اضغط أي مفتاح للمتابعة...
pause >nul