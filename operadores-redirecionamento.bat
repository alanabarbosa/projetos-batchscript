@echo off
chcp 1252 > nul

:: Setting directories
set "dir_out=%userprofile%"
set "file_log=%userprofile%\Documents\log.txt"

:: Generating log
dir "%dir_out%" > "%file_log%"

echo Log gerado em: %file_log%

pause > nul
