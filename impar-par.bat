@echo off
chcp 1252 > nul

set /p number="Digite um número: "

for /l %%a in (1,1,%number%) do (
    call :f %%a
)

:f
set /a x=%number% % 2

echo %x%

pause > nul
