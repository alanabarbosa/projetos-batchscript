@echo off
chcp 1252 > nul
setlocal EnableDelayedExpansion

set /p string="Digite alguma palavra> "

:main
if not defined cont (set /a cont=0)
if not defined s (set /a s=0)

if "!string:~%cont%,1!" == " " (
  set /a s+=1
)

if not "!string:~%cont%,1!" == "" (
  set /a cont+=1
  goto main
)

set /a total=cont-s

echo Quantidade de caracteres = %total%
echo Espaços = %s%

pause > nul