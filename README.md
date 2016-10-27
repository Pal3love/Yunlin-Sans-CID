# 云林黑体 OpenType CID 版
云林黑体 CID 版源文件，供参考。


生成的 OpenType CID 字体在 Release 目录内。


字体生成方法（适用于 Windows 平台）：

安装好 Active Perl 和准备好 AFDKO 之后，将 otfcc 的两个文件 otfccdump.exe 和 otfccbuild.exe 放在 \Tools\win 目录内，与 tx.exe、sfntedit.exe 等程序在一起。接下来，将 AFDKO_Regular 目录下除了“命令行.txt”之外的所有文件全部复制到 \Tools\win 目录内，运行 Regular_Build.bat，脚本结束之后就会在当前目录生成 YunlinSans-Regular.otf。同理可生成 YunlinSans-Bold.otf。
