## Read this in [English](README-EN.md).

<div dir=rtl>

# تدوينات

خذ تدويناتك وملاحظاتك بسهولة عن طريق الـ markdown ثم حولها إلى ملفات pdf.

## متطلبات 

1. [pandoc](https://pandoc.org/installing.html)
2. [LaTeX](https://www.latex-project.org/get/)
3. [GNU make for win](http://gnuwin32.sourceforge.net/packages/make.htm) أو استخدم مدير الحزم الخاص بنظام تشغيل إن كان Linux/Mac.

## العرض التلقائي

إذا ما كنت تريد عرض التعديلات تلقائيا أثناء الكتابة، قم باتباع التعليمات التي في هذه [المقالة](https://dev.to/l04db4l4nc3r/vim-to-the-rescue-pdf-preview-2e10).

## طريقة الاستخدام :) 

**.تأكد أن** ملفاتَك أسماءَها لا تحتوي على مسافات بيضاء.

<div dir=ltr>

```bash
> make                     # ابنِ كل الملفات
> make help                # احصل على مساعدة
> make FILES=file1,file2   # ابنِ ملفات بعينها
> make FILES="file1 file2" # ابنِ ملفات بعينها
> make FILES="$(echo file{1..20})" # ابنِ ملفات بعينها
> make clean               # امسح كل الملفات داخل موضع الخَرْج
> make -B                  # ابنِ كل الملفات إجبارا حتى لو لم يتغير
> make --always-make       # ابنِ كل الملفات إجبارا حتى لو لم يتغير
> make -j4                 # ابنِ كل الملفات لا تزامنيا
> make -jobs=4             # ابنِ كل الملفات لا تزامنيا
```

</div>

</div>