<p align="center">
  <img src="resources/Readme_banner.svg" alt="《你缺失的那门计算机课》开源 PDF 版">
</p>

---

这是《你缺失的那门计算机课》开源 PDF 版（下称「本作品」）的 LaTeX 源代码仓库。本作品使用 TeX Live 2025 排版。另有 [网页版](https://www.criwits.top/missing)。

> [!important]
> 《你缺失的那门计算机课》开源 PDF 版并不是由网页版自动生成的，而是手工排版制作的。因此，**开源 PDF 版在内容上落后于网页版，并可能存在缺漏或错误**。

## 作品简介

这是一份适合电脑小白入门的电脑使用课程。它平易近人，娓娓道来，介绍了从基本的文件管理，到软件的寻找安装，再到各类使用技巧与优良软件推荐的许多内容，旨在帮助读者在信息化时代更灵活地使用电脑。

这也是一份面向今日与未来的信息时代指南。它立足当下，探索变革，讲述了当今热门的生成式 AI、网络安全、物联网与云计算等前沿技术的概念、原理和应用，能够引导读者立于数字化时代的潮头，把握科技发展的方向。

零门槛、易理解、有深度，与时俱进、开放共享——这是《你缺失的那门计算机课》不断追求的目标，也是我们努力的方向。

本书纸质版预计于 2026 年初由清华大学出版社出版，敬请期待！~~（对，鸽了！）~~

## 如何使用

通常情况下，您可以直接在 [发布（Release）页面](https://github.com/criwits/missing-pdf/releases/latest) 下载最新的开源 PDF 版。如果您希望自行构建 PDF，请在本地安装 TeX Live 2025（请勿使用 Overleaf），然后按如下步骤操作：

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

## 贡献

如果您对本作品内容有任何意见、建议，或发现本书中的错误，请优先发送邮件到 [missing@criwits.top](mailto:missing@criwits.top)，或在 [网页版的仓库](https://github.com/criwits/missing-web) 提交议题（Issue）。

## 著作权与许可

《你缺失的那门计算机课》开源 PDF 版 · 版权所有 © 2021–2025 Hans Wan 和 Windy Deng。

本作品中的所有原创内容及设计整体，除非特别说明，均以 [知识共享署名—非商业性使用—相同方式共享 4.0 协议国际版（CC BY-NC-SA 4.0）](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh) 协议授权。您可以在协议允许的范围内自由地分享、复制本作品的内容及基于本作品内容进行创作，但必须注明原作者和链接，并且不得用于任何商业目的。请参阅 [二次创作指南](https://www.criwits.top/missing/adapt-guide.html) 了解更多信息。

本作品所有内容「按原样」提供，并且不含有任何明示或者暗示的担保。我们不保证本作品中任何部分的绝对正确。若您认为本文中叙述的内容与您从其他地方看到的不同甚至相悖，请遵循您自己的判断。

为便于进行讲解，本作品中使用了一些来自互联网的图片等素材，它们的具体来源和许可已在 [借物表](https://www.criwits.top/missing/attribution-of-external-content.html) 中逐一列明。本作品中出现的所有商标、标志及相关知识产权，无论是否标注有 ® 或 ™ 及其他标识，均归属它们各自的权利持有人所有。引用这些商标或标志仅用于识别和介绍相关产品、服务或公司，并无意侵犯其商标或版权。本作品为了教学和演示目的，提及并展示了一些计算机软件。这些软件的所有权利均归各自的版权所有者所有。