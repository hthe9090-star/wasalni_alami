# وصلني عالمي – نسخة تجريبية (Flutter)

**الميزات المضمّنة:**
- شاشات: هبوط، عميل، مدير، مندوب، موظف، دعم
- إعداد المحافظات مع التسعيرة: `assets/config/provinces.json`
- شعار SVG ذهبي-أسود: `assets/images/logo.svg`
- ترجمة عربية/إنجليزية: `assets/translations/*.json` (الاستخدام مُبسّط في النسخة التجريبية)
- تصميم داكن فاخر

## المتطلبات
- تثبيت Flutter SDK (3.x)
- Android Studio أو Xcode (لبناء APK/IPA)

## التشغيل محلياً
```bash
flutter pub get
flutter run -d chrome    # للويب (للاختبار السريع)
flutter run -d android   # على جهاز/محاكي أندرويد
```

## بناء APK (تجريبي/Debug)
```bash
flutter build apk --debug
# APK الناتج: build/app/outputs/flutter-apk/app-debug.apk
```

## ملاحظات
- هذه نسخة واجهات تجريبية (بدون باكند). جاهزة للتوسع بإضافة Firebase/Auth/DB وREST API.
- لوحة المدير تعرض المحافظات للتجربة ويمكن ربطها لاحقاً بقاعدة بيانات.
- بإمكانك تعديل اسم التطبيق والأيقونة من `pubspec.yaml` وملفات أندرويد/ iOS لاحقًا.