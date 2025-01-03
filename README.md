# 《你缺失的那门计算机课》PDF 版本

> [!important]
> 《你缺失的那门计算机课》PDF 版本并不是由 [网页版](https://www.criwits.top/missing) 自动生成的，而是手工排版制作的。因此，PDF 版本在内容上落后于网页版，并可能存在缺漏或错误。

> [!warning]
> 近期 PDF 版正在大调版式，以下内容很可能不再适用，敬请期待更新！

这是《你缺失的那门计算机课》的 PDF 版本 LaTeX 源代码。按照以下步骤来生成 PDF：

0. 正确安装如下字体并确保 XeLaTeX 可以找到它们：
   1. Inter，
   2. 思源黑体，
   3. 等距更纱黑体 Slab SC，
   4. Office Support MDL2 Assets，
   5. Segoe Fluent Icons；
1. 克隆本仓库到你喜欢的地方；
2. 将 `resource/quote.zip` 中的两个标点映射文件放到**用户 TEXMF 树**下的 `fonts/misc/xetex/fontmapping/xecjk` 目录中；
3. 刷新 TeX 发行版的文件名数据库，TeX Live 用户执行
   ```
   mktexlsr
   ```
   MiKTeX 用户执行
   ```
   initexmf --update-fndb
   ```
4. 重复执行两遍
   ```
   xelatex -output-driver="xdvipdfmx -i dvipdfmx-unsafe.cfg -q -E" missing.tex
   ```
   或者直接双击 `make.bat` 来生成 PDF 文件。 
