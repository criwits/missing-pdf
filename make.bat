@echo off
cd /d %~dp0
set TEMPFILE=missing.aux chapters\*.aux missing.log missing.out missing.toc missing.xdv missing.synctex.gz
set OPT=-interaction=nonstopmode -synctex=1 -output-driver="xdvipdfmx -i dvipdfmx-unsafe.cfg -q -E" --shell-escape

xelatex --no-pdf missing.tex
xelatex %OPT% --no-pdf missing.tex
xelatex %OPT% missing.tex

del %TEMPFILE%

if exist missing.pdf (start missing.pdf)

exit