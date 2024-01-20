@echo off
chcp 65001 > nul
setlocal EnableDelayedExpansion

set toUpperCount=0
set toLowerCount=0
set toUpper=ABCDEFGHIJKLMNOPQRSTUVWXYZ
set toLower=abcdefghijklmnopqrstuvwxyz
set /p string="Digite algo: "

:inicio
if not defined string goto fim

echo !string:~0,1! | findstr /r "[ABCDEFGHIJKLMNOPQRSTUVWXYZ]" >nul

if %errorlevel% == 0 (
    set toUpperCount=1
) else (
    set toLowerCount=1
)

set string=!string:~1!
goto :inicio

:fim
if %toUpperCount%%toLowerCount%==10 set res=maiuscula
if %toUpperCount%%toLowerCount%==11 set res=maiusculas e minusculas
if %toUpperCount%%toLowerCount%==01 set res=minuscula

echo A palavra digitada é compostas por letras %res%
echo.

pause > nul
