call perl cmap-tool.pl < YunlinSans-Bold.cidmap > YunlinSans-Bold-UTF32-H
call tx -t1 YunlinSans-Bold.ttf YunlinSans-Bold.pfa
call mergeFonts -cid cidfontinfo.info YunlinSans-Bold.raw YunlinSans-Bold-glyf2cid.map YunlinSans-Bold.pfa
call makeotf -r -nS -f YunlinSans-Bold.raw -o YunlinSans-Bold-nS.otf -fi cidfontinfo.info -mf FontMenuNameDB.menu -ff features.fea -b -addn -adds -sans -cs 25 -ch YunlinSans-Bold-UTF32-H
call otfccdump YunlinSans-Bold-nS.otf | otfccbuild -o YunlinSans-Bold.otf -s -O1 --keep-average-char-width --keep-unicode-ranges --keep-modified-time --subroutinize

del cidfontinfo.info
del current.fpr
del features.fea
del FontMenuNameDB.menu
del YunlinSans-Bold.cidmap
del YunlinSans-Bold.pfa
del YunlinSans-Bold.raw
del YunlinSans-Bold.ttf
del YunlinSans-Bold-glyf2cid.map
del YunlinSans-Bold-nS.otf
del YunlinSans-Bold-UTF8-H
del YunlinSans-Bold-UTF16-H
del YunlinSans-Bold-UTF32-H
del Bold_Build.bat
