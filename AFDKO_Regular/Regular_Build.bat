call perl cmap-tool.pl < YunlinSans-Regular.cidmap > YunlinSans-Regular-UTF32-H
call tx -t1 YunlinSans-Regular.ttf YunlinSans-Regular.pfa
call mergeFonts -cid cidfontinfo.info YunlinSans-Regular.raw YunlinSans-Regular-glyf2cid.map YunlinSans-Regular.pfa
call makeotf -r -nS -f YunlinSans-Regular.raw -o YunlinSans-Regular-nS.otf -fi cidfontinfo.info -mf FontMenuNameDB.menu -ff features.fea -osbOn 6 -addn -adds -sans -cs 25 -ch YunlinSans-Regular-UTF32-H
call otfccdump YunlinSans-Regular-nS.otf | otfccbuild -o YunlinSans-Regular.otf -s -O1 --keep-average-char-width --keep-unicode-ranges --keep-modified-time --subroutinize

del cidfontinfo.info
del current.fpr
del features.fea
del FontMenuNameDB.menu
del YunlinSans-Regular.cidmap
del YunlinSans-Regular.pfa
del YunlinSans-Regular.raw
del YunlinSans-Regular.ttf
del YunlinSans-Regular-glyf2cid.map
del YunlinSans-Regular-nS.otf
del YunlinSans-Regular-UTF8-H
del YunlinSans-Regular-UTF16-H
del YunlinSans-Regular-UTF32-H
del Regular_Build.bat
