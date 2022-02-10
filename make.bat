@echo off
cd /d %~dp0
set TEMPFILE=missing.aux chapters\*.aux missing.log missing.out missing.toc missing.xdv missing.synctex.gz
set OPT=-interaction=nonstopmode -output-driver="xdvipdfmx -i dvipdfmx-unsafe.cfg -q -E"

xelatex %OPT% --no-pdf missing.tex
xelatex %OPT% missing.tex

del %TEMPFILE%

if exist missing.pdf (start missing.pdf)

exit