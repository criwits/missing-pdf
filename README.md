# 《你缺失的那门计算机课》开源 PDF 版

> [!important]
> 《你缺失的那门计算机课》开源 PDF 版并不是由 [网页版](https://www.criwits.top/missing) 自动生成的，而是手工排版制作的。因此，开源 PDF 版在内容上落后于网页版，并可能存在缺漏或错误。

这是《你缺失的那门计算机课》的开源 PDF 版 LaTeX 源代码，最新发布的 PDF 由 TeX Live 2025 排版。请按照以下步骤来生成 PDF：

> [!warning]
> 请使用本地 TeX 环境编译。不要使用 Overleaf。

0. 正确安装如下字体（不要使用可变字体），并确保 XeLaTeX 可以找到它们：
   1. [Inter](https://rsms.me/inter/)；
   2. [思源黑体](https://github.com/adobe-fonts/source-han-sans/)（不是「Noto Sans SC」，也不是「思源黑体 CN」）；
   3. [等距更纱黑体 Slab SC](https://github.com/be5invis/Sarasa-Gothic)；
   4. [Noto Serif Tibetan](https://fonts.google.com/noto/specimen/Noto+Serif+Tibetan)。
1. 克隆本仓库到你喜欢的地方；
2. 将 `resource/quote.zip` 中的两个标点映射文件放到**用户 TEXMF 树**下的 `fonts/misc/xetex/fontmapping/xecjk` 目录中；
3. 刷新 TeX 发行版的文件名数据库，TeX Live 用户执行
   ```shell
   mktexlsr
   ```
   MiKTeX 用户执行
   ```shell
   initexmf --update-fndb
   ```
4. 重复执行两遍
   ```shell
   xelatex --shell-escape -output-driver="xdvipdfmx -i dvipdfmx-unsafe.cfg -q -E" missing.tex
   ```
   Windows 用户也可以直接双击 `make.bat` 来生成 PDF 文件。整个构建脚本持续约 4 分钟 ~~，在此期间不妨听首歌~~。
