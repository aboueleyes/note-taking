# Note Taking 

### Take notes easily with markdown and convert it to pdf 
## Installaion 
1. [pandoc](https://pandoc.org/installing.html)
2. [LaTeX](https://www.latex-project.org/get/)
3. [GNU make for win](http://gnuwin32.sourceforge.net/packages/make.htm) for Linux/mac use your package manger

## use make :) 
```bash
❯ ./build FILE_NAME      # ./src/FILE_NAME.md ابني الملف
❯ make                   # ابني كل الملفات
❯ make clean             # امسح كل الملفات داخل موضع الخَرْج
❯ make -B                # ابني كل الملفات إجبارا حتى لو لم يتغير
❯ make --always-make     # ابني كل الملفات إجبارا حتى لو لم يتغير
❯ make -j4               # ابني كل الملفات لا تزامنيا
❯ make -jobs=4           # ابني كل الملفات لا تزامنيا
```
