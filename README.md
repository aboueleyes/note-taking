# Note Taking 

### Take notes easily with markdown and convert it to pdf 

## Installaion 
1. [pandoc](https://pandoc.org/installing.html)
2. [LaTeX](https://www.latex-project.org/get/)
3. [GNU make for win](http://gnuwin32.sourceforge.net/packages/make.htm) for Linux/mac use your package manger

## Auto-preview

You can follow instructions in this [article](https://dev.to/l04db4l4nc3r/vim-to-the-rescue-pdf-preview-2e10) to get your files auto previewed while editing.

## use make :) 

**Make sure** your files don't include spaces in their names.

```bash
❯ make                     # ابني كل الملفات
❯ make FILES=file1,file2   # ابني ملفات بعينها
❯ make FILES="file1 file2" # ابني ملفات بعينها
❯ make FILES="$(echo file{1..20})" # ابني ملفات بعينها
❯ make clean               # امسح كل الملفات داخل موضع الخَرْج
❯ make -B                  # ابني كل الملفات إجبارا حتى لو لم يتغير
❯ make --always-make       # ابني كل الملفات إجبارا حتى لو لم يتغير
❯ make -j4                 # ابني كل الملفات لا تزامنيا
❯ make -jobs=4             # ابني كل الملفات لا تزامنيا
```
