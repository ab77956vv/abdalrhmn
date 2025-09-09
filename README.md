# برنامج الجبرني المحاسبي - إدارة مغاسل السيارات

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub Pages](https://img.shields.io/badge/GitHub-Pages-blue)](https://pages.github.com/)

نظام محاسبي شامل ومتطور لإدارة مغاسل السيارات، مبني بتقنيات الويب الحديثة مع واجهة مستخدم عصرية وميزات أمان متقدمة.

## ✨ المميزات الرئيسية

### 📊 إدارة شاملة للأعمال
- **إدارة الفروع المتعددة**: إضافة وتعديل وحذف الفروع بسهولة
- **نظام الكشوفات المتنوعة**: 10 أنواع مختلفة من الكشوفات المحاسبية
- **إدارة الموظفين**: نظام شامل لإدارة الموظفين والرواتب والسلف
- **إدارة المصروفات**: تتبع جميع المصروفات الثابتة والمتغيرة

### 📈 التقارير المالية المتقدمة
- **تقارير يومية**: تقارير مفصلة لكل يوم
- **تقارير شهرية**: تحليل شامل للأداء الشهري
- **تقارير مخصصة**: تقارير لأي فترة زمنية محددة
- **تقرير الأرباح والخسائر**: تحليل مالي شامل
- **تصدير Excel**: تصدير التقارير بصيغة Excel احترافية
- **طباعة PDF**: طباعة التقارير بتصميم مهني

### 🔐 نظام أمان متقدم
- **إدارة المستخدمين**: نظام أذونات متعدد المستويات
- **حماية XSS**: حماية شاملة من هجمات Cross-Site Scripting
- **تتبع العمليات**: سجل شامل لجميع العمليات
- **نظام النسخ الاحتياطي**: نسخ احتياطي تلقائي ويدوي

### 🎨 واجهة مستخدم عصرية
- **تصميم متجاوب**: يعمل على جميع الأجهزة
- **دعم اللغة العربية**: RTL كامل مع خطوط عربية جميلة
- **تأثيرات بصرية**: انيميشن وتأثيرات 3D
- **لوحة التحكم**: إحصائيات ورسوم بيانية تفاعلية

## 🚀 البدء السريع

### متطلبات النظام
- متصفح حديث (Chrome, Firefox, Safari, Edge)
- اتصال إنترنت لتحميل المكتبات الخارجية

### التثبيت والتشغيل

#### 1. تحميل المشروع
```bash
git clone https://github.com/your-username/car-wash-accounting-system.git
cd car-wash-accounting-system
```

#### 2. تشغيل الخادم المحلي (اختياري)
```bash
npm install
npm start
# أو
node server.js
```

#### 3. فتح التطبيق
افتح الملف `index.html` في المتصفح أو اذهب إلى `http://localhost:3000`

### بيانات تسجيل الدخول الافتراضية
- **اسم المستخدم**: `admin`
- **كلمة المرور**: `admin123`

## 📁 هيكل المشروع

```
car-wash-accounting-system/
├── index.html              # الصفحة الرئيسية للنشر
├── Untitled-1.html         # التطبيق الكامل
├── upgrade_checker.js      # أداة فحص النظام
├── server.js               # خادم Node.js للتطوير
├── package.json            # إعدادات المشروع
├── README_UPGRADE.md       # دليل الترقية الشامل
├── .gitignore             # ملفات مستبعدة من Git
└── LICENSE                # رخصة MIT
```

## 🎯 الكشوفات المتاحة

1. **كشف الإيرادات اليومية** - تتبع إيرادات الفرع اليومية
2. **كشف بيان الموازنات البنكية** - إدارة المعاملات البنكية
3. **كشف المشتريات النقدية** - تسجيل المشتريات النقدية
4. **كشف المشتريات الآجلة** - إدارة المشتريات بالتقسيط
5. **كشف التغذية اليومية** - تتبع مصروفات التغذية
6. **سلف الموظفين وسحبيات** - إدارة السلف والسحبيات
7. **كشف صيانة المشرف** - تسجيل أعمال الصيانة
8. **كشف المشتريات السوقية** - المشتريات اليومية
9. **كشف صيانة المدير** - أعمال الصيانة الكبرى
10. **كشف مشتريات المدير** - مشتريات الإدارة

## 🔧 التقنيات المستخدمة

- **HTML5**: هيكل الصفحة وSemantic HTML
- **CSS3**: تصميم متجاوب مع Grid وFlexbox
- **JavaScript ES6+**: منطق التطبيق والتفاعل
- **Chart.js**: الرسوم البيانية التفاعلية
- **XLSX**: تصدير ملفات Excel
- **DOMPurify**: حماية من XSS
- **CryptoJS**: العمليات التشفيرية (اختياري)

## 🌐 النشر على GitHub Pages

### الطريقة الأولى: نشر مباشر من GitHub
1. أنشئ repository جديد على GitHub
2. ارفع جميع الملفات إلى Repository
3. اذهب إلى Settings > Pages
4. اختر Source: "Deploy from a branch"
5. اختر Branch: "main" و Folder: "/ (root)"
6. احفظ التغييرات
7. ستحصل على رابط النشر: `https://your-username.github.io/repository-name`

### الطريقة الثانية: استخدام Actions (للمشاريع الكبيرة)
```yaml
# .github/workflows/deploy.yml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/configure-pages@v3
      - uses: actions/upload-pages-artifact@v1
        with:
          path: '.'
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v1
```

## 📊 المميزات التقنية

### نظام قاعدة البيانات
- **LocalStorage**: تخزين محلي سريع وموثوق
- **JSON Structure**: هيكل بيانات منظم وقابل للتوسع
- **Backup System**: نظام نسخ احتياطي شامل

### الأمان والحماية
- **Input Validation**: التحقق من صحة المدخلات
- **XSS Protection**: حماية شاملة من هجمات XSS
- **Audit Trail**: تتبع جميع العمليات
- **Role-based Access**: نظام أذونات متعدد المستويات

### الأداء والتوسع
- **Lazy Loading**: تحميل المحتوى عند الحاجة
- **Optimized Rendering**: عرض محسن للبيانات الكبيرة
- **Memory Management**: إدارة ذاكرة فعالة

## 🔄 خطة التطوير المستقبلية

### قاعدة بيانات حقيقية
- **MySQL/PostgreSQL**: قاعدة بيانات علائقية
- **MongoDB**: قاعدة بيانات غير علائقية
- **Firebase**: حل سحابي جاهز

### Backend API
- **Node.js + Express**: خادم backend قوي
- **RESTful API**: واجهة برمجة تطبيقات
- **JWT Authentication**: مصادقة آمنة
- **Rate Limiting**: حماية من الإفراط في الاستخدام

### مميزات إضافية
- **Real-time Updates**: تحديثات فورية
- **Mobile App**: تطبيق جوال مصاحب
- **Multi-language**: دعم لغات متعددة
- **Advanced Analytics**: تحليلات متقدمة

## 📞 الدعم والمساعدة

### التوثيق
- **README_UPGRADE.md**: دليل شامل للترقية والتطوير
- **Code Comments**: تعليقات تفصيلية في الكود
- **API Documentation**: توثيق الدوال والواجهات

### استكشاف الأخطاء
```javascript
// فحص حالة النظام
console.log('System Status:', {
  users: State.db.users.length,
  branches: State.db.branches.length,
  version: '2.0.0'
});
```

### الإبلاغ عن المشاكل
1. تحقق من Console للأخطاء
2. استخدم upgrade_checker.js لفحص النظام
3. راجع ملف README_UPGRADE.md للحلول الشائعة

## 📄 الترخيص

هذا المشروع مرخص تحت رخصة MIT - راجع ملف [LICENSE](LICENSE) للتفاصيل.

## 🤝 المساهمة

نرحب بالمساهمات! يرجى:

1. Fork المشروع
2. إنشاء فرع للميزة الجديدة (`git checkout -b feature/AmazingFeature`)
3. Commit التغييرات (`git commit -m 'Add some AmazingFeature'`)
4. Push للفرع (`git push origin feature/AmazingFeature`)
5. افتح Pull Request

## 🙏 شكر وتقدير

شكراً لجميع المساهمين والمطورين الذين ساعدوا في تطوير هذا النظام.

---

**تم تطوير هذا النظام بواسطة عبدالرحمن الجبرني**
📧 [abdulrahman.aljabrni@example.com](mailto:abdulrahman.aljabrni@example.com)
🌐 [GitHub Profile](https://github.com/abdulrahman-aljabrni)