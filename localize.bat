@echo off
chcp 65001 > nul
title Localize

set /p string="Qual palavra deseja procurar? "
set dir="%userprofile%\Documents"
set /a documents_count=0

for %%f in (%dir%\*.odt) do (
	set /a documents_count+=1
	for /r %%i in (%%f) do (
		echo %%i
	)
)

echo.
echo Foram encontrados: %documents_count% arquivos com a palavra %string%

pause > nul
