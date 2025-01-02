@echo off
cd /d %~dp0
set prev_err_lvl=0

echo Checking TeX installation...
xelatex -v >output.log 2>error.log
if %ERRORLEVEL% == 0 goto :create_pdf
echo Cannot find TeX!
goto :show_output

:create_pdf
echo Creating PDF...
set TEMPFILE=missing.aux chapters\*.aux missing.log missing.out missing.toc missing.xdv missing.synctex.gz
set BASE_OPT=-interaction=nonstopmode -halt-on-error --shell-escape
set EXTRA_OPT=-synctex=1 -output-driver="xdvipdfmx -i dvipdfmx-unsafe.cfg -q -E"

echo XeLaTeX -- 1st run...
xelatex %BASE_OPT% --no-pdf missing.tex >>output.log 2>>error.log
if %ERRORLEVEL% neq 0 goto :show_output
echo XeLaTeX -- 2nd run...
xelatex %BASE_OPT% %EXTRA_OPT% --no-pdf missing.tex >>output.log 2>>error.log
if %ERRORLEVEL% neq 0 goto :show_output
echo XeLaTeX -- 3rd run...
xelatex %BASE_OPT% %EXTRA_OPT% missing.tex >>output.log 2>>error.log
if %ERRORLEVEL% neq 0 goto :show_output

if %ERRORLEVEL% == 0 goto :end_success

:show_output
set prev_err_lvl=%ERRORLEVEL%
for /f %%f in ("output.log") do set size=%%~zf
if %size% equ 0 goto :show_error
echo.
echo ########################################
echo # output.log:
echo ########################################
echo.
type output.log
echo.

:show_error
for /f %%f in ("error.log") do set size=%%~zf
if %size% equ 0 goto :end_failed_no_error
echo.
echo ########################################
echo # error.log:
echo ########################################
echo.
type error.log
echo.

echo !!!
echo Failed due to an error, please refer to error.log above or file.
goto :end_fail

:end_failed_no_error
echo !!!
echo Failed due to an error.
goto :end_fail

:end_fail
echo Exit code: %prev_err_lvl%.
pause
goto :end

:end_success
@REM if exist missing.pdf (start missing.pdf)
echo.
echo Done.

:end
del %TEMPFILE%
exit /b %prev_err_lvl%.