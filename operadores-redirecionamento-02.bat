@echo off
chcp 1252 > nul
setlocal EnableDelayedExpansion

set /p title="Qual o nome do arquivo de texto? "
set /p content="Qual o conteúdo dele? "

echo !content! > "%USERPROFILE%\Documents\%title%.txt"
echo.
echo Arquivo criado em: %USERPROFILE%\Documents\%title%.txt
echo.

type %USERPROFILE%\Documents\%title%.txt

echo.

:update
set /p asking="Deseja adicionar mais conteúdo (y/n)? "

if /i "%asking%"=="y" (
	cls
    set /p content2="Digite o conteúdo que deseja adicionar: "
    echo !content2! >> "%USERPROFILE%\Documents\%title%.txt"
    echo.
    echo O arquivo: "%USERPROFILE%\Documents\%title%.txt" foi atualizado.
	echo.
	type %USERPROFILE%\Documents\%title%.txt
	echo.
	goto update
) else (
	exit
)

:pause
pause > nul
