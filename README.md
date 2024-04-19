# 《你缺失的那门计算机课》PDF 版本

这是《你缺失的那门计算机课》的 PDF 版本 LaTeX 源代码。按照以下步骤来生成 PDF：

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
