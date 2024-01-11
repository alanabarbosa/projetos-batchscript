@echo off
chcp 65001 > nul

:inicio
set /p "caractere=Digite um caractere: "
echo %caractere% | findstr /r "[0-9]" > nul
if %errorlevel% equ 0 (
	echo.
    echo O caractere digitado é um número.
	echo.
	goto inicio
) 

echo %caractere% | findstr /r "[a-zA-Z]" > nul
if %errorlevel% equ 0 (
	echo.
    echo O caractere digitado é uma string.
	echo.
	goto inicio
) 

echo %caractere% | findstr /r "[^0-9a-zA-Z]" > nul
if %errorlevel% equ 0 (
	echo.
    echo O caractere digitado é um caractere especial.
	echo.
	goto inicio
)

pause > nul
