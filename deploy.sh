#!/bin/bash

# Script for deploying Car Wash Accounting System to GitHub Pages
# Usage: ./deploy.sh [repository-name]

echo "🚀 بدء عملية النشر على GitHub Pages"
echo "====================================="

# Check if repository name is provided
if [ -z "$1" ]; then
    echo "❌ يرجى تمرير اسم المستودع كمعامل"
    echo "Usage: ./deploy.sh <repository-name>"
    echo "Example: ./deploy.sh car-wash-accounting-system"
    exit 1
fi

REPO_NAME=$1
GITHUB_USERNAME=$(git config user.name)

if [ -z "$GITHUB_USERNAME" ]; then
    echo "❌ لم يتم العثور على اسم المستخدم في Git"
    echo "يرجى تعيين اسم المستخدم أولاً:"
    echo "git config --global user.name 'Your Name'"
    exit 1
fi

echo "📋 معلومات النشر:"
echo "  - اسم المستخدم: $GITHUB_USERNAME"
echo "  - اسم المستودع: $REPO_NAME"
echo "  - رابط المستودع: https://github.com/$GITHUB_USERNAME/$REPO_NAME"
echo ""

# Check if remote origin exists and update it
if git remote get-url origin > /dev/null 2>&1; then
    echo "🔄 تحديث remote origin..."
    git remote set-url origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
else
    echo "➕ إضافة remote origin..."
    git remote add origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
fi

# Push to GitHub
echo "📤 رفع الكود إلى GitHub..."
if git push -u origin master; then
    echo "✅ تم رفع الكود بنجاح!"
else
    echo "❌ فشل في رفع الكود. تأكد من:"
    echo "  1. إنشاء المستودع على GitHub"
    echo "  2. إعداد SSH key أو Personal Access Token"
    echo "  3. التحقق من صحة اسم المستخدم وكلمة المرور"
    exit 1
fi

echo ""
echo "🌐 لتفعيل GitHub Pages:"
echo "1. اذهب إلى: https://github.com/$GITHUB_USERNAME/$REPO_NAME"
echo "2. اضغط على Settings"
echo "3. في القائمة الجانبية، اضغط على Pages"
echo "4. في Source، اختر 'Deploy from a branch'"
echo "5. اختر Branch: master و Folder: /(root)"
echo "6. اضغط Save"
echo ""
echo "📱 رابط التطبيق بعد التفعيل:"
echo "https://$GITHUB_USERNAME.github.io/$REPO_NAME"
echo ""
echo "⏱️ قد يستغرق الأمر بضع دقائق حتى يصبح الموقع متاحاً"
echo ""
echo "🎉 تم إعداد المشروع للنشر بنجاح!"