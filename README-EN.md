# Note Taking 

Take notes easily with markdown and convert it to pdf files.

## Prerequisites.
1. [pandoc](https://pandoc.org/installing.html)
2. [LaTeX](https://www.latex-project.org/get/)
3. [GNU make for win](http://gnuwin32.sourceforge.net/packages/make.htm) for Linux/mac use your package manger.

## Auto-preview

You can follow instructions in this [article](https://dev.to/l04db4l4nc3r/vim-to-the-rescue-pdf-preview-2e10) to get your files auto previewed while editing.

## Usage

**Make sure** your files don't include spaces in their names.

```bash
❯ make                     # build all files
❯ make help                # seek help
❯ make FILES=file1,file2   # build specific files
❯ make FILES="file1 file2" # build specific files
❯ make FILES="$(echo file{1..20})" # build specific files
❯ make clean               # clean build destination
❯ make -B                  # force building for all files
❯ make --always-make       # force building for all files
❯ make -j4                 # async build, 4 at a time
❯ make -jobs=4             # async build, 4 at a time
```
