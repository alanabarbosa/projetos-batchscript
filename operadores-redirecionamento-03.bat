@echo off
chcp 1252 > nul

set file="%USERPROFILE%\Documents"

echo Listando por ordem alfabetica
dir /b %file% | sort

pause > nul
