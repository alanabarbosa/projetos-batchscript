@echo off
chcp 65001 > nul
setlocal EnableDelayedExpansion

:inicio
set /p string="Digite algo> "
set min=abcdefghijklmnopqrstuvwxyz
set max=ABCDEFGHIJKLMNOPQRSTUVWXYZ

:conversao
set /a count+=1

set letramax=!max:~-%count%,1!
set letramin=!min:~-%count%,1!

set string=!string:%letramax%=%letramin%!



if %count% == 26 (echo %string% goto inicio) else (goto conversao)

pause > nul