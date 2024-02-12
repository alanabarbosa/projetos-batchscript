@ECHO OFF
REM  QBFC Project Options Begin
REM  HasVersionInfo: No
REM Companyname: 
REM Productname: 
REM Filedescription: 
REM Copyrights: 
REM Trademarks: 
REM Originalname: 
REM Comments: 
REM Productversion:  0. 0. 0. 0
REM Fileversion:  0. 0. 0. 0
REM Internalname: 
REM ExeType: consoleold
REM Architecture: x64
REM Appicon: 
REM AdministratorManifest: No
REM  QBFC Project Options End
@ECHO ON
@echo off
chcp 1252 > nul

set "downloads=%userprofile%\Downloads"
set "documents=%userprofile%\Documents"
set "images=%userprofile%\Documents\Images"
set "music=%userprofile%\Documents\Music"
set "videos=%userprofile%\Documents\Videos"
set "others=%userprofile%\Documents\Outros"

setlocal enabledelayedexpansion

for /f %%i in ('dir /b "%downloads%" ^| find /c "."') do set "numArquivos=%%i"

if %numArquivos% equ 0 (
    echo Não existem novos arquivos baixados

) else (
    echo Existem novos arquivos baixados.
)

for %%a in ("%downloads%\*.*") do (

    set "extension=%%~xa"

    if /i "!extension!"==".jpg" move "%%a" "!images!"
    if /i "!extension!"==".png" move "%%a" "!images!"
    if /i "!extension!"==".bmp" move "%%a" "!images!"
    if /i "!extension!"==".svg" move "%%a" "!images!"
    if /i "!extension!"==".jpeg" move "%%a" "!images!"

    if /i "!extension!"==".mp3" move "%%a" "!music!"

    if /i "!extension!"==".mp4" move "%%a" "!videos!"
    if /i "!extension!"==".avi" move "%%a" "!videos!"

    if /i "!extension!"==".doc" move "%%a" "!documents!"
    if /i "!extension!"==".odt" move "%%a" "!documents!"
    if /i "!extension!"==".docx" move "%%a" "!documents!"
    if /i "!extension!"==".pdf" move "%%a" "!documents!"
    if /i "!extension!"==".zip" move "%%a" "!documents!"
    if /i "!extension!"==".exe" move "%%a" "!documents!"
    if /i "!extension!"==".xd" move "%%a" "!documents!"
    if /i "!extension!"==".sql" move "%%a" "!documents!"
    if /i "!extension!"==".xlsx" move "%%a" "!documents!"
)

for /d %%a in ("%downloads%\*") do (
    move "%%a" "%documents%"
)

endlocal
pause > nul

